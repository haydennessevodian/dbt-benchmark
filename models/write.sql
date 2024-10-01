{{ test_includes() }}

select
    customer.custkey,
    customer.name as name,
    sum(lineitem.extendedprice * (1 - lineitem.discount)) as revenue,
    customer.acctbal,
    nation.name as nation,
    customer.address,
    customer.phone,
    customer.comment
from
    customer
left join orders
    on orders.custkey = customer.custkey
left join lineitem
    on lineitem.orderkey = orders.orderkey
left join nation
    on nation.nationkey = customer.nationkey
group by
    customer.custkey,
    customer.name,
    customer.acctbal,
    customer.phone,
    nation.name,
    customer.address,
    customer.comment
order by
    revenue desc