dashboard "Infosec-Cost" {
  title = "Infosec Compliance Cost" 


  text {
    value = "Infosec Compliance Cost "
  }
container{

  chart {
  type= "column"
  title= "Periodic cost for maintaining compliance"
  query= query.Infosec-cost
  width= 8
  }
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

