--
-- Licensed to the Apache Software Foundation (ASF) under one
-- or more contributor license agreements.  See the NOTICE file
-- distributed with this work for additional information
-- regarding copyright ownership.  The ASF licenses this file
-- to you under the Apache License, Version 2.0 (the
-- "License"); you may not use this file except in compliance
-- with the License.  You may obtain a copy of the License at
--
--   http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing,
-- software distributed under the License is distributed on an
-- "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
-- KIND, either express or implied.  See the License for the
-- specific language governing permissions and limitations
-- under the License.
--

cube select measure2 from sample_cube where time_range_in(dt, '2014-06-24-23', '2014-06-25-00')
cube select measure2 from sample_cube where time_range_in(dt, '2014-06-25-00', '2014-06-26-00')
cube select measure2 from sample_cube where time_range_in(dt, '2014-06-24-23', '2014-06-26-01')
cube select dim1, measure2 from sample_cube where time_range_in(dt, '2014-06-24-23', '2014-06-25-00')
cube select dim1, measure2 from sample_cube where time_range_in(dt, '2014-06-25-00', '2014-06-26-00')
cube select dim1, measure2 from sample_cube where time_range_in(dt, '2014-06-24-23', '2014-06-26-01')
cube select dim3, measure3 from sample_cube where time_range_in(dt, '2014-06-24-23', '2014-06-25-00')
cube select dim3, measure3 from sample_cube where time_range_in(dt, '2014-06-25-00', '2014-06-26-00')
cube select dim3, measure3 from sample_cube where time_range_in(dt, '2014-06-24-23', '2014-06-26-01')
cube select sample_dim.name, measure4 from sample_cube where time_range_in(dt, '2014-06-24-23', '2014-06-25-00')
cube select sample_dim.name, measure4 from sample_cube where time_range_in(dt, '2014-06-25-00', '2014-06-26-00')
cube select sample_dim.name, measure4 from sample_cube where time_range_in(dt, '2014-06-24-23', '2014-06-26-01')
cube select sample_dim.name, measure4 from sample_cube where time_range_in(dt, '2014-06-24-23', '2014-06-25-00') order by sample_dim.name
cube select sample_dim.name, measure4 from sample_cube where time_range_in(dt, '2014-06-25-00', '2014-06-26-00') order by sample_dim.name
cube select sample_dim.name, measure4 from sample_cube where time_range_in(dt, '2014-06-24-23', '2014-06-26-01') order by sample_dim.name
cube select sample_dim.name, measure3 from sample_cube where time_range_in(dt, '2014-06-24-23', '2014-06-25-00') and sample_dim.name != "first"
cube select sample_dim.name, measure3 from sample_cube where time_range_in(dt, '2014-06-25-00', '2014-06-26-00') and sample_dim.name != "first"
cube select sample_dim.name, measure3 from sample_cube where time_range_in(dt, '2014-06-24-23', '2014-06-26-01') and sample_dim.name != "first"
cube select sample_dim.name, measure2 from sample_cube where time_range_in(dt, '2014-06-24-23', '2014-06-25-00') and sample_dim.name != "first" order by sample_dim.name
cube select sample_dim.name, measure2 from sample_cube where time_range_in(dt, '2014-06-24-23', '2014-06-25-00') and sample_dim.name != "first" order by sample_dim.name desc
cube select sample_dim.name, measure2 from sample_cube where time_range_in(dt, '2014-06-25-00', '2014-06-26-00') and sample_dim.name != "first" order by sample_dim.name
cube select sample_dim.name, measure2 from sample_cube where time_range_in(dt, '2014-06-25-00', '2014-06-26-00') and sample_dim.name != "first" order by sample_dim.name desc
cube select sample_dim.name, measure2 from sample_cube where time_range_in(dt, '2014-06-24-23', '2014-06-26-01') and sample_dim.name != "first" order by sample_dim.name
cube select sample_dim.name, measure2 from sample_cube where time_range_in(dt, '2014-06-24-23', '2014-06-26-01') and sample_dim.name != "first" order by sample_dim.name desc
cube select sample_dim.name, measure4 from sample_cube where time_range_in(dt, '2014-06-24-23', '2014-06-25-00') order by sample_dim.name limit 2
cube select sample_dim.name, measure4 from sample_cube where time_range_in(dt, '2014-06-25-00', '2014-06-26-00') order by sample_dim.name limit 2
cube select sample_dim.name, measure4 from sample_cube where time_range_in(dt, '2014-06-24-23', '2014-06-26-01') order by sample_dim.name limit 2
cube select sample_dim.name, measure3 from sample_cube where time_range_in(dt, '2014-06-24-23', '2014-06-25-00') and sample_dim.name != "first" limit 2
cube select sample_dim.name, measure3 from sample_cube where time_range_in(dt, '2014-06-25-00', '2014-06-26-00') and sample_dim.name != "first" limit 2
cube select sample_dim.name, measure3 from sample_cube where time_range_in(dt, '2014-06-24-23', '2014-06-26-01') and sample_dim.name != "first" limit 2
cube select sample_dim.name, measure2 from sample_cube where time_range_in(dt, '2014-06-24-23', '2014-06-25-00') and sample_dim.name != "first" order by sample_dim.name limit 2
cube select sample_dim.name, measure2 from sample_cube where time_range_in(dt, '2014-06-24-23', '2014-06-25-00') and sample_dim.name != "first" order by sample_dim.name desc limit 2
cube select sample_dim.name, measure2 from sample_cube where time_range_in(dt, '2014-06-25-00', '2014-06-26-00') and sample_dim.name != "first" order by sample_dim.name limit 2
cube select sample_dim.name, measure2 from sample_cube where time_range_in(dt, '2014-06-25-00', '2014-06-26-00') and sample_dim.name != "first" order by sample_dim.name desc limit 2
cube select sample_dim.name, measure2 from sample_cube where time_range_in(dt, '2014-06-24-23', '2014-06-26-01') and sample_dim.name != "first" order by sample_dim.name limit 2
cube select sample_dim.name, measure2 from sample_cube where time_range_in(dt, '2014-06-24-23', '2014-06-26-01') and sample_dim.name != "first" order by sample_dim.name desc limit 2
cube select dim1, dim2, measure1, measure2 from sample_cube where time_range_in(dt, '2014-06-25-20', '2014-06-26-02')
cube select dim1, dim2, measure1, measure2 from sample_cube where time_range_in(dt, '2014-06-25-20', '2014-06-26-02') order by dim2
cube select dim1, dim2, measure1, measure2 from sample_cube where time_range_in(dt, '2014-06-25-20', '2014-06-26-02') order by dim2 desc
cube select dim1, dim2, measure1, measure2 from sample_cube where time_range_in(dt, '2014-06-25-20', '2014-06-26-02') limit 2
cube select dim1, dim2, measure1, measure2 from sample_cube where time_range_in(dt, '2014-06-25-20', '2014-06-26-02') order by dim2 limit 2
cube select dim1, dim2, measure1, measure2 from sample_cube where time_range_in(dt, '2014-06-25-20', '2014-06-26-02') order by dim2 desc limit 2
cube select dim1, avg(measure2) from sample_cube where time_range_in(dt, '2014-06-25-20', '2014-06-26-02')
cube select dim3, min(measure3) from sample_cube where time_range_in(dt, '2014-06-25-20', '2014-06-26-02')
cube select dim1, sum(measure2) from sample_cube where time_range_in(dt, '2014-06-24-23', '2014-06-25-00')
cube select dim1, sum(measure2)from sample_cube where time_range_in(dt, '2014-06-25-00', '2014-06-26-00')
cube select dim1, sum(measure2) from sample_cube where time_range_in(dt, '2014-06-24-23', '2014-06-26-01')
cube select dim3, max(measure3) from sample_cube where time_range_in(dt, '2014-06-24-23', '2014-06-25-00')
cube select dim3, max(measure3) from sample_cube where time_range_in(dt, '2014-06-25-00', '2014-06-26-00')
cube select dim3, max(measure3) from sample_cube where time_range_in(dt, '2014-06-24-23', '2014-06-26-01')
cube select sample_dim.name, measure4 from sample_cube join sample_dim where time_range_in(dt, '2014-06-24-23', '2014-06-25-00')
cube select sample_dim.name, measure4 from sample_cube left outer join sample_dim where time_range_in(dt, '2014-06-25-00', '2014-06-26-00')
cube select sample_dim.name, measure4 from sample_cube right outer join sample_dim where time_range_in(dt, '2014-06-24-23', '2014-06-26-01')
cube select sample_dim.name, measure4 from sample_cube full outer join sample_dim where time_range_in(dt, '2014-06-24-23', '2014-06-26-01')
select * from (cube select sample_dim.name, measure4 from sample_cube join sample_dim where time_range_in(dt, '2014-06-24-23', '2014-06-25-00') ) a
drop table temp1
create table temp1 as cube select sample_dim.name, measure4 from sample_cube where time_range_in(dt, '2014-06-24-23', '2014-06-25-00')
select * from temp1
insert overwrite local directory '/tmp/example-cube-output' cube select sample_dim.name, measure4 from sample_cube where time_range_in(dt, '2014-06-24-23', '2014-06-25-00')
insert overwrite local directory '/tmp/example-cube-output2' ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' WITH SERDEPROPERTIES ('serialization.null.format'='-NA-','field.delim'=','  ) STORED AS TEXTFILE cube select sample_dim.name, measure4 from sample_cube where time_range_in(dt, '2014-06-24-23', '2014-06-25-00')
drop table temp2
create table temp2(name string, msr4 float)
insert overwrite table temp2 cube select sample_dim.name, measure4 from sample_cube where time_range_in(dt, '2014-06-24-23', '2014-06-25-00')
select * from temp2
drop table temp3
create table temp3(name string, msr4 float) ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' WITH SERDEPROPERTIES ('serialization.null.format'='-NA-','field.delim'=','  ) STORED AS TEXTFILE
insert overwrite table temp3 cube select sample_dim.name, measure4 from sample_cube where time_range_in(dt, '2014-06-24-23', '2014-06-25-00')
select * from temp3
