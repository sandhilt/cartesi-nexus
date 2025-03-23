#!/bin/bash
set -eux

RUN awslocal lambda create-function \
    --function-name localstack-lambda-url-example \
    --runtime nodejs22.x \
    --zip-file fileb://function.zip \
    --handler index.handler \
    --role arn:aws:iam::000000000000:role/lambda-role