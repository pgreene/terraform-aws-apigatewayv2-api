resource "aws_apigatewayv2_api" "general" {
  name = var.name
  description = var.description
  version = var.api_version
  body = var.body
  protocol_type = var.protocol_type
  api_key_selection_expression = var.api_key_selection_expression

  dynamic "cors_configuration" {
    for_each = var.cors_configuration == null ? [] : [var.cors_configuration]
    content {
      allow_credentials = cors_configuration.value.allow_credentials
      allow_headers = cors_configuration.value.allow_headers
      allow_methods = cors_configuration.value.allow_methods
      allow_origins = cors_configuration.value.allow_origins
      expose_headers = cors_configuration.value.expose_headers
      max_age = cors_configuration.value.max_age
    }
  }

  credentials_arn = var.credentials_arn
  disable_execute_api_endpoint = var.disable_execute_api_endpoint
  fail_on_warnings = var.fail_on_warnings
  route_key = var.route_key
  route_selection_expression = var.route_selection_expression
  target = var.target
  tags = var.tags
}