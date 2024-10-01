INSERT INTO vast."tesseract/benchmark/tpch/sf1_stats".customer SELECT * FROM tpch.sf1.customer;
INSERT INTO vast."tesseract/benchmark/tpch/sf1_stats".lineitem SELECT * FROM tpch.sf1.lineitem;
INSERT INTO vast."tesseract/benchmark/tpch/sf1_stats".nation SELECT * FROM tpch.sf1.nation;
INSERT INTO vast."tesseract/benchmark/tpch/sf1_stats".orders SELECT * FROM tpch.sf1.orders;
INSERT INTO vast."tesseract/benchmark/tpch/sf1_stats".part SELECT * FROM tpch.sf1.part;
INSERT INTO vast."tesseract/benchmark/tpch/sf1_stats".partsupp SELECT * FROM tpch.sf1.partsupp;
INSERT INTO vast."tesseract/benchmark/tpch/sf1_stats".region SELECT * FROM tpch.sf1.region;
INSERT INTO vast."tesseract/benchmark/tpch/sf1_stats".supplier SELECT * FROM tpch.sf1.supplier;

ANALYZE vast."tesseract/benchmark/tpch/sf1_stats".customer;
ANALYZE vast."tesseract/benchmark/tpch/sf1_stats".lineitem;
ANALYZE vast."tesseract/benchmark/tpch/sf1_stats".nation;
ANALYZE vast."tesseract/benchmark/tpch/sf1_stats".orders;
ANALYZE vast."tesseract/benchmark/tpch/sf1_stats".part;
ANALYZE vast."tesseract/benchmark/tpch/sf1_stats".partsupp;
ANALYZE vast."tesseract/benchmark/tpch/sf1_stats".region;
ANALYZE vast."tesseract/benchmark/tpch/sf1_stats".supplier;