variable "name" {
    description = "(Required) The name of the API. Must be less than or equal to 128 characters in length."
    default = null
}

variable "description" {
    default = "API Gateway Rest API"
}

variable "body" {
    description = "(Optional) An OpenAPI specification that defines the set of routes and integrations to create as part of the HTTP APIs. Supported only for HTTP APIs. Note: If the body argument is provided, the OpenAPI specification will be used to configure the integrations and route for the HTTP API. If this argument is provided, the following resources should not be managed as separate ones, as updates may cause manual resource updates to be overwritten aws_apigatewayv2_integration & aws_apigatewayv2_route"
    default = null
}

variable "protocol_type" {
    description = "(Required) The API protocol. Valid values: HTTP, WEBSOCKET."
    default = null
}

variable "api_key_selection_expression" {
    description = "(Optional) An API key selection expression. Valid values: $context.authorizer.usageIdentifierKey, $request.header.x-api-key. Defaults to $request.header.x-api-key. Applicable for WebSocket APIs."
    default = null
}

variable "cors_configuration" {
    description = "(Optional) The cross-origin resource sharing (CORS) configuration. Applicable for HTTP APIs."
    default = null
}

variable "credentials_arn" {
    description = "(Optional) Part of quick create. Specifies any credentials required for the integration. Applicable for HTTP APIs."
    default = null
}

variable "disable_execute_api_endpoint" {
    description = "(Optional) Whether clients can invoke the API by using the default execute-api endpoint. By default, clients can invoke the API with the default {api_id}.execute-api.{region}.amazonaws.com endpoint. To require that clients use a custom domain name to invoke the API, disable the default endpoint."
    default = null
}

variable "route_key" {
    description = "(Optional) Part of quick create. Specifies any route key. Applicable for HTTP APIs."
    default = null
}

variable "route_selection_expression" {
    description = "(Optional) The route selection expression for the API. Defaults to $request.method $request.path."
    default = null
}

variable "target" {
    description = "(Optional) Part of quick create. Quick create produces an API with an integration, a default catch-all route, and a default stage which is configured to automatically deploy changes. For HTTP integrations, specify a fully qualified URL. For Lambda integrations, specify a function ARN. The type of the integration will be HTTP_PROXY or AWS_PROXY, respectively. Applicable for HTTP APIs."
    default = null
}

variable "fail_on_warnings" {
    description = "(Optional) Whether warnings should return an error while API Gateway is creating or updating the resource using an OpenAPI specification. Defaults to false. Applicable for HTTP APIs."
    default = false
}

variable "api_version" {
    description = "(Optional) A version identifier for the API. Must be between 1 and 64 characters in length."
    default = null
}

variable "tags" {
    default = null
}

