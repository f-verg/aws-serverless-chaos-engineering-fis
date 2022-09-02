# function.py

import os
from chaos_lambda import inject_fault

@inject_fault
def handler(event, context):
    return {
        'statusCode': 200,
        'body': 'Hello from Lambda!'
    }