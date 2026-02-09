resource "aws_lambda_function" "backend" {
  function_name = "helloServerlessTerraform"
  runtime       = "python3.12"
  handler       = "lambda_function.lambda_handler"
  role          = aws_iam_role.lambda_role.arn

  filename         = "lambda/lambda.zip"
  source_code_hash = filebase64sha256("lambda/lambda.zip")
}
