mod "Infosec-Cost" {
  title = "Infoec-Cost"
}

query "Cloudtrail" {
  sql = <<-EOQ
    SELECT

  to_char(period_end, 'Mon-YY') as "Month",
  net_amortized_cost_amount

FROM
  (
    SELECT
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
      service = 'AWS CloudTrail'
  ) ranked_data
WHERE
  row_num <= 6
ORDER BY
  period_start ASC,
  period_end ASC;

  EOQ
}


query "AWS Config" {
  sql = <<-EOQ
    SELECT
   to_char(period_end, 'Mon-YY') as "Month",
  net_amortized_cost_amount
FROM
  (
    SELECT
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
      service = 'AWS Config'
  ) ranked_data
WHERE
  row_num <= 6
ORDER BY
  period_start ASC,
  period_end ASC;

  EOQ
}

query "AWS WAF" {
  sql = <<-EOQ
    SELECT
 to_char(period_end, 'Mon-YY') as "Month",
  net_amortized_cost_amount
FROM
  (
    SELECT
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
      service = 'AWS WAF'
  ) ranked_data
WHERE
  row_num <= 6
ORDER BY
  period_start ASC,
  period_end ASC;

  EOQ
}

query "Amazon Inspector" {
  sql = <<-EOQ
    SELECT
   to_char(period_end, 'Mon-YY') as "Month",
  net_amortized_cost_amount
FROM
  (
    SELECT
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
      service = 'Amazon Inspector'
  ) ranked_data
WHERE
  row_num <= 6
ORDER BY
  period_start ASC,
  period_end ASC;

  EOQ
}

query "AmazonCloudWatch" {
  sql = <<-EOQ
    SELECT
  to_char(period_end, 'Mon-YY') as "Month",
  net_amortized_cost_amount
FROM
  (
    SELECT
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
      service = 'AmazonCloudWatch'
  ) ranked_data
WHERE
  row_num <= 6
ORDER BY
  period_start ASC,
  period_end ASC;

  EOQ
}

query "Amazon GuardDuty" {
  sql = <<-EOQ
    SELECT
  to_char(period_end, 'Mon-YY') as "Month",
  net_amortized_cost_amount
FROM
  (
    SELECT
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
      service = 'Amazon GuardDuty'
  ) ranked_data
WHERE
  row_num <= 6
ORDER BY
  period_start ASC,
  period_end ASC;

  EOQ
}

