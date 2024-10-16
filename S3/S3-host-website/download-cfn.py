import boto3
from flask import Flask, send_file

# Initialize Flask app
app = Flask(__name__)

# Initialize Boto3 S3 client
s3 = boto3.client('s3')

# S3 bucket name
BUCKET_NAME = 'my-website-bucket'

# Download a file from S3
@app.route('/download/<filename>')
def download_file(filename):
    s3.download_file(BUCKET_NAME, filename, filename)
    return send_file(filename, as_attachment=True)

# Run the app
if __name__ == '__main__':
    app.run(debug=True)
