resource "aws_cloudwatch_metric_alarm" "cpu_utilization" {
  alarm_name          = "HighCPUUtilization"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = "2"
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = "300"
  statistic           = "Average"
  threshold           = "80"

  alarm_description = "This metric monitors EC2 CPU utilization"

  dimensions = {
    InstanceId = aws_instance.jenkins_server.id
  }

  alarm_actions = [] # Add SNS topic ARN or other action ARNs
}
