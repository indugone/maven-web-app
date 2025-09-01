FROM python:3.9-slim
 
# Set working directory
WORKDIR /app
 
# Copy all project files into the container
COPY . .
 
# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt
 
# Expose the port (change if app runs on another port)
EXPOSE 5000
 
# Run the application
CMD ["python", "app.py"]
