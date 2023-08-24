mod "Infosec-Cost" {
  title = "Infoec-Cost"
}

query "Cloudtrail" {
  sql = <<-EOQ
 SELECT
  to_char(period_end, 'Mon-YY') as "Month",
  net_amortized_cost_amount
FROM
      aws.aws_cost_by_service_monthly
WHERE
      service = 'AWS CloudTrail'
      
order by
  period_end;

  EOQ
}

query "AWS-Config" {
  sql = <<-EOQ
    SELECT
  to_char(period_end, 'Mon-YY') as "Month",
  net_amortized_cost_amount
FROM
      aws.aws_cost_by_service_monthly
WHERE
      service = 'AWS Config'
      
order by
  period_end;

  EOQ
}


query "AWS-WAF" {
  sql = <<-EOQ
    SELECT
  to_char(period_end, 'Mon-YY') as "Month",
  net_amortized_cost_amount
FROM
      aws.aws_cost_by_service_monthly
WHERE
      service = 'AWS WAF'
      
order by
  period_end;

  EOQ
}

query "Amazon-Inspector" {
  sql = <<-EOQ
   SELECT
  to_char(period_end, 'Mon-YY') as "Month",
  net_amortized_cost_amount
FROM
      aws.aws_cost_by_service_monthly
WHERE
      service = 'Amazon Inspector'
      
order by
  period_end;

  EOQ
}

query "AmazonCloudWatch" {
  sql = <<-EOQ
     SELECT
  to_char(period_end, 'Mon-YY') as "Month",
  net_amortized_cost_amount
FROM
      aws.aws_cost_by_service_monthly
WHERE
      service = 'AmazonCloudWatch'
      
order by
  period_end;

  EOQ
}

query "Amazon-GuardDuty" {
  sql = <<-EOQ
     SELECT
  to_char(period_end, 'Mon-YY') as "Month",
  net_amortized_cost_amount
FROM
      aws.aws_cost_by_service_monthly
WHERE
      service = 'Amazon GuardDuty'
      
order by
  period_end;
  EOQ
}


query "Infosec-cost" {
  sql = <<-EOQ
    SELECT
 TO_CHAR(DATE_TRUNC('month', period_end), 'Month YYYY') AS month,
  SUM(net_amortized_cost_amount) AS total_spent
FROM
  aws.aws_cost_by_service_monthly
WHERE
  service IN (
    'AWS CloudTrail',
    'AWS Config',
    'AWS WAF',
    'Amazon Inspector',
    'AmazonCloudWatch',
    'Amazon GuardDuty'
  )
GROUP BY
  DATE_TRUNC('month', period_end)
ORDER BY
  month ASC;

EOQ
}


