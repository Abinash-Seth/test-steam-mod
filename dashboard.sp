dashboard "Infosec-Cost" {
  title = "Infosec Cost"

  text {
    value = "This will guide you through the key concepts of building your own dashboards."
  }

chart {
  title = "Cloudtrail"
  query = query.Cloudtrail.sql
  type  = "column"
  width = 4
}
chart {
  title = "AWS Config"
  query = query.AWS Config.sql
  type  = "column"
  width = 4
}
chart {
  title = "AWS WAF"
  query = query.AWS WAF
  type  = "column"
  width = 4
}
chart {
  title = "Amazon Inspector"
  query = query.Amazon Inspector.sql
  type  = "column"
  width = 4
}
chart {
  title = "AmazonCloudWatch"
  query = query.AmazonCloudWatch.sql
  type  = "column"
  width = 4
}
}
