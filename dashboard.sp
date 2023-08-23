dashboard "Infosec-Cost" {
  title = "Infosec Cost" 


  text {
    value = "This will guide you through the key concepts of building your own dashboards."
  }
  container {

    chart {
    title="CloudTrail"
    query= query.Cloudtrail
    type="column"
    width= 4
  }
    chart {
    title = "AWS Config"
    query = query.AWS-Config
    type  = "column"
    width= 4

  }
    chart {
    title = "AWS WAF"
    query = query.AWS-WAF
    type  = "column"

  }
    chart {
    title = "Amazon Inspector"
    query = query.Amazon-Inspector
    type  = "column"

  }
    chart {
    title = "AmazonCloudWatch"
    query = query.AmazonCloudWatch
    type  = "column"
  
  }

}
 
}

