resource "aws_glue_catalog_table" "mytable" {
  name          = var.glue-table-name
  database_name = var.glue-database-name

  table_type = "EXTERNAL_TABLE"

  parameters = {
    EXTERNAL              = "TRUE"
  }

  storage_descriptor {
    location      = var.glue-table-location
    input_format  = var.input-format
    output_format = var.output-format

    ser_de_info {
      name = "hiveserde"
      serialization_library = var.serialization-library

      parameters = {
        "serialization.format" = var.serialization-format
      }
    }

    columns {
      name = "id"
      type = "int"
    }

    columns {
      name = "name"
      type = "string"
    }

    columns {
      name    = "address"
      type    = "string"
    }


  }
}
