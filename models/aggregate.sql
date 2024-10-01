{{ test_includes() }}

select
    lineitem.returnflag,
    lineitem.linestatus,
    sum(lineitem.quantity) as sum_qty,
    sum(lineitem.extendedprice) as sum_base_price,
    sum(lineitem.extendedprice * (1 - lineitem.discount)) as sum_disc_price,
    sum(lineitem.extendedprice * (1 - lineitem.discount) * (1 + lineitem.tax)) as sum_charge,
    avg(lineitem.quantity) as avg_qty,
    avg(lineitem.extendedprice) as avg_price,
    avg(lineitem.discount) as avg_disc,
    count(*) as count_order
from
    lineitem
where
    lineitem.shipdate <= date '1998-12-01' - interval '90' day
group by
    lineitem.returnflag,
    lineitem.linestatus
order by
    lineitem.returnflag,
    lineitem.linestatus