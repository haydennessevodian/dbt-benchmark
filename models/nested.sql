{{ test_includes() }}

select
    supplier.name,
    supplier.address
from
    supplier
left join nation
    on nation.nationkey = supplier.nationkey
where
    supplier.suppkey in
    (
        select
            partsupp.suppkey
        from
            partsupp
        where
            partsupp.partkey in
            (
                select
                    part.partkey
                from
                    part
                where
                    part.name like 'forest%'
            )
            and partsupp.availqty >
            (
                select
                    0.5 * sum(lineitem.quantity)
                from
                    lineitem
                where
                    lineitem.partkey = partsupp.partkey
                    and lineitem.suppkey = partsupp.suppkey
                    and lineitem.shipdate >= date('1994-01-01')
                    and lineitem.shipdate < date('1994-01-01') + interval '10' year
            )
    )
        and nation.name = 'CANADA'
    order by
        supplier.name