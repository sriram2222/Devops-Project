import json
from datetime import datetime

def lambda_handler(event, context):
    return {
        "statusCode": 200,
        "headers": {
            "Access-Control-Allow-Origin": "*"
        },
        "body": json.dumps({
            "message": "Hello from Terraform Lambda 🚀",
            "timestamp": datetime.utcnow().isoformat()
        })
    }
