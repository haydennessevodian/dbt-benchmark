INSERT INTO vast."tesseract/benchmark/tpch/sf100_stats".customer SELECT * FROM tpch.sf100.customer;
INSERT INTO vast."tesseract/benchmark/tpch/sf100_stats".lineitem SELECT * FROM tpch.sf100.lineitem;
INSERT INTO vast."tesseract/benchmark/tpch/sf100_stats".nation SELECT * FROM tpch.sf100.nation;
INSERT INTO vast."tesseract/benchmark/tpch/sf100_stats".orders SELECT * FROM tpch.sf100.orders;
INSERT INTO vast."tesseract/benchmark/tpch/sf100_stats".part SELECT * FROM tpch.sf100.part;
INSERT INTO vast."tesseract/benchmark/tpch/sf100_stats".partsupp SELECT * FROM tpch.sf100.partsupp;
INSERT INTO vast."tesseract/benchmark/tpch/sf100_stats".region SELECT * FROM tpch.sf100.region;
INSERT INTO vast."tesseract/benchmark/tpch/sf100_stats".supplier SELECT * FROM tpch.sf100.supplier;

ANALYZE vast."tesseract/benchmark/tpch/sf100_stats".customer;
ANALYZE vast."tesseract/benchmark/tpch/sf100_stats".lineitem;
ANALYZE vast."tesseract/benchmark/tpch/sf100_stats".nation;
ANALYZE vast."tesseract/benchmark/tpch/sf100_stats".orders;
ANALYZE vast."tesseract/benchmark/tpch/sf100_stats".part;
ANALYZE vast."tesseract/benchmark/tpch/sf100_stats".partsupp;
ANALYZE vast."tesseract/benchmark/tpch/sf100_stats".region;
ANALYZE vast."tesseract/benchmark/tpch/sf100_stats".supplier;