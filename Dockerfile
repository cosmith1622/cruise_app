# Use the official AWS Lambda base image for Python 3.12
FROM public.ecr.aws/lambda/python:3.12

# Optional: Install dependencies if requirements.txt exists
# COPY requirements.txt ${LAMBDA_TASK_ROOT}
# RUN pip install --no-cache-dir -r requirements.txt

# Copy application files into the Lambda task root directory
COPY app.py ${LAMBDA_TASK_ROOT}

# Set the CMD to your handler: <filename>.<function_name>
CMD [ "app.lambda_handler" ]