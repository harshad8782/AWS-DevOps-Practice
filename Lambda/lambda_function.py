import json

def lambda_handler(event, context):
    name = event.get('name', 'DevOps World')
    return {
        'statusCode': 200,
        'body': json.dumps({
            'message': f'Hello {name}!',
            'deployed_by': 'Harshad Raurale',
            'stack': 'Jenkins → Docker → EC2 → Lambda'
        })
    }