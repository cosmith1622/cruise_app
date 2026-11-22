import json

def lambda_handler(event, context):
    print("Cruise App Lambda executed successfully!")
    
    return {
        "statusCode": 200,
        "headers": {
            "Content-Type": "application/json"
        },
        "body": json.dumps({
            "message": "Hello World from Cruise App Lambda!"
        })
    }