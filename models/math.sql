{{ test_includes() }}

select
    lineitem.returnflag,
    lineitem.linestatus,
    sum(acos(sin(lineitem.quantity))) as sum_qty,
    sum(asin(cos(lineitem.extendedprice))) as sum_base_price,
    sum(asin(acos(sin(cos(lineitem.extendedprice * (1 - lineitem.discount)))))) as sum_disc_price,
    sum(acos(asin(cos(sin(lineitem.extendedprice * (1 - lineitem.discount))))) / (1 + lineitem.tax)) as sum_charge,
    avg(ln(lineitem.quantity)) as avg_qty,
    avg(log2(lineitem.extendedprice)) as avg_price,
    avg(log10(lineitem.discount)) as avg_disc,
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