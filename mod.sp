mod "Infosec-Cost" {
  title = "Infoec-Cost"
}

query "infosec_spents" {
  sql = <<-EOQ
    SELECT
  *
FROM
  (
    SELECT
      service,
      period_start,
      period_end,
      net_amortized_cost_amount,
      net_amortized_cost_unit,
      ROW_NUMBER() OVER (
        PARTITION BY
          service
        ORDER BY
          period_start DESC,
          period_end DESC
      ) AS row_num
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
  ) ranked_data
WHERE
  row_num <= 6
ORDER BY
  service,
  period_start ASC,
  period_end ASC;

  EOQ
}

