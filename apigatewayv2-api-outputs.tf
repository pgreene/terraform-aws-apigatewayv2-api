output "id" {
    value = aws_apigatewayv2_api.general.id
    description = "The API identifier."
}

output "api_endpoint" {
    value = aws_apigatewayv2_api.general.api_endpoint
    description = "The URI of the API, of the form https://{api-id}.execute-api.{region}.amazonaws.com for HTTP APIs and wss://{api-id}.execute-api.{region}.amazonaws.com for WebSocket APIs."
}

output "execution_arn" {
    value = aws_apigatewayv2_api.general.execution_arn
    description = "The ARN prefix to be used in an aws_lambda_permissions source_arn attribute or in an aws_iam_policy to authorize access to the @connections API. See the Amazon API Gateway Developer Guide for details."
}

output "arn" {
    value = aws_apigatewayv2_api.general.arn
    description = "The ARN of the API."
}

output "tags_all" {
    value = aws_apigatewayv2_api.general.tags_all
    description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
}
