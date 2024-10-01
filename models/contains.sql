{{ test_includes() }}

select
    sum(lineitem.extendedprice * (1 - lineitem.discount)) as revenue
from
    lineitem
left join part
    on part.partkey = lineitem.partkey
where
(
    part.brand = 'Brand#12'
    and part.container in ( 'SM CASE', 'SM BOX', 'SM PACK', 'SM PKG')
    and lineitem.quantity >= 1 and lineitem.quantity <= 1 + 10
    and part.size between 1 and 5
    and lineitem.shipmode in ('AIR', 'AIR REG')
    and lineitem.shipinstruct = 'DELIVER IN PERSON'
)
or
(
    part.brand = '#Brand23'
    and part.container in ('MED BAG', 'MED BOX', 'MED PKG', 'MED PACK')
    and lineitem.quantity >= 10 and lineitem.quantity <= 10 + 10
    and part.size between 1 and 10
    and lineitem.shipmode in ('AIR', 'AIR REG')
    and lineitem.shipinstruct = 'DELIVER IN PERSON'
)
or
(
    part.brand = '#Brand34'
    and part.container in ( 'LG CASE', 'LG BOX', 'LG PACK', 'LG PKG')
    and lineitem.quantity >= 20 and lineitem.quantity <= 20 + 10
    and part.size between 1 and 15
    and lineitem.shipmode in ('AIR', 'AIR REG')
    and lineitem.shipinstruct = 'DELIVER IN PERSON'
)