{{ test_includes() }}

SELECT
    orderkey,
    partkey,
    suppkey,
    shipmode,
    shipinstruct,
    comment
from lineitem
where comment LIKE '%blit%' or comment LIKE '%package%' or comment LIKE '%special%' AND shipinstruct LIKE '%DELIVER%'