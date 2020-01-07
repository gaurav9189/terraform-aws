variable "myregion" {
default = "eu-west-1"
}

variable "glue-table-name" {
default = "employees_hdfs"
}


variable "glue-database-name" {
default = "sampledb"
}

variable "glue-table-location" {
default = "s3://gaurav-bucket-rbs/cloud_aws1/user/hive/warehouse/dlodhdfs.db/employees_hdfs"
}

variable "input-format" {
default = "org.apache.hadoop.mapred.TextInputFormat"
}

variable "output-format" {
default = "org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat"
}


variable "serialization-library" {
default = "org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe"
}

variable "serialization-format" {
default = "1"
}




variable "myaccesskey" {
}

variable "mysecretkey" {
}
