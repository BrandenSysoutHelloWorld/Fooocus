FROM python:3.10

# Set the working directory
WORKDIR /app

# Install required dependencies
# RUN apt-get update && apt-get install -y \
#     libglib2.0-0 \
#     libsm6 \
#     libxext6 \
#     libxrender-dev

# Copy the Fooocus application files into the container
COPY . /app

# Install any additional dependencies required by Fooocus
RUN pip install -r requirements_versions.txt

EXPOSE 7865

# Command to run Fooocus
CMD ["python", "entry_with_update.py"]
