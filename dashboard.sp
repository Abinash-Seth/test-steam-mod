dashboard "Infosec-Cost" {
  title = "Infosec Cost" 


  text {
    value = "This dashboard shows all the Infosec Infra spents "
  }

  chart {
  type = "pie"
  title = "Total Infosec spent each month"
  query= query.Infosec-cost
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
    width = 4

  }
    chart {
    title = "Amazon Inspector"
    query = query.Amazon-Inspector
    type  = "column"
    width = 6

  }
    chart {
    title = "AmazonCloudWatch"
    query = query.AmazonCloudWatch
    type  = "column"
    width = 6
  
  }

}
 
}

