import boto3
import pandas as pd
import pymysql
import os
from botocore.exceptions import ClientError

# AWS S3 setup
s3 = boto3.client('s3')
bucket_name = 'pb-buck'

# Read data from S3
try:
    response = s3.get_object(Bucket=bucket_name)
    df = pd.read_csv(response['Body'])
    print("Data read successfully from S3!")
except ClientError as e:
    if e.response['Error']['Code'] == 'NoSuchBucket':
        print(f"Error: The specified bucket '{bucket_name}' does not exist.")
    else:
        print(f"Unexpected error: {e}")

# Push data to RDS
try:
    connection = pymysql.connect(
    	host=os.getenv('RDS_HOST'),
    	user=os.getenv('RDS_USER'),
    	password=os.getenv('RDS_PASSWORD'),
    	database=os.getenv('RDS_DB')
    )
    df.to_sql('data_table', connection, if_exists='replace', index=False)
    print("Data pushed to RDS successfully!")
except Exception as e:
    print(f"RDS Push Failed: {e}")
