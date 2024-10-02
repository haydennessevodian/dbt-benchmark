{{ test_includes() }}

select
    o_year,
    sum(case when nation = 'BRAZIL' then volume else 0 end) / sum(volume) as mkt_share
from (
    select
        year(orders.orderdate) as o_year,
        lineitem.extendedprice * (1 - lineitem.discount) as volume,
        n2.name as nation
    from part
    left join lineitem
        on lineitem.partkey = part.partkey
    left join supplier
        on supplier.suppkey = lineitem.suppkey
    left join orders
        on orders.orderkey = lineitem.orderkey
        and orders.orderdate >= date '1995-01-01' and orders.orderdate < date '1996-12-31'
    left join customer
        on customer.custkey = orders.custkey
    left join nation as n1
        on n1.nationkey = customer.nationkey
    left join region
        on region.regionkey = n1.regionkey
        and region.name = 'AMERICA'
    left join nation as n2
        on n2.nationkey = supplier.nationkey
    where part.type = 'ECONOMY ANODIZED STEEL'
) as all_nations
group by
    o_year
order by
    o_year