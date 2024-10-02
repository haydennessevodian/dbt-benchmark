{{ test_includes() }}

select
    orderkey,
    sum(case when SUBSTRING(container, 7, 10) = 'CASE' then volume else 0 end) / sum(volume) as mkt_share
from (
    SELECT
        lineitem.orderkey,
        lineitem.comment,
        part.container,
        lineitem.extendedprice * (1 - lineitem.discount) as volume
    from part
    left join lineitem
        on lineitem.partkey = part.partkey
    where part.container LIKE '%CASE%'
    and lineitem.shipinstruct LIKE '%COLLECT%'
) as all_nations
group by
    orderkey
order by
    orderkey