FROM python:3.9-slim
WORKDIR /app
COPY . /app
RUN pip install --no-cache-dir -r requirements.txt

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define environment variable
ENV FLASK_APP=src/app.py

# Run app.py when the container launches
CMD ["flask", "run", "--host=0.0.0.0"]