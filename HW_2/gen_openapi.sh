
# openapi-python-client generate --path openapi.yaml
# datamodel-codegen --input openapi/openapi.yaml --output dtos.py --input-file-type openapi --output-model-type pydantic_v2.BaseModel
# fastapi-codegen --input openapi.yaml --output app
# docker run --rm -v ${PWD}:/local openapitools/openapi-generator-cli generate     -i /local/openapi_2.yaml     -g python-fastapi     -o /local/fastapi-server

python3 -m fastapi_code_generator --input openapi/openapi.yaml --output app_tmp && mkdir -p app && mv app_tmp/models.py app/models.py && rm -rf app_tmp
