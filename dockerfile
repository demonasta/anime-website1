# Use an official Python runtime as a parent image
FROM python

# Set metadata labels
LABEL maintainer="demonasta"
LABEL description="Learn by Doing - Anime Club Website"
LABEL title="Anime Club Web App"

# Create the /app directory in the container
RUN mkdir /app

# Set the working directory in the container to /app
WORKDIR /app

# Copy the current directory contents into the /app directory in the container
COPY . /app

# Install any dependencies (e.g., Python HTTP server)
#RUN pip install http.server
#because http.server exists in python 

# Expose port 8000 to the outside world
EXPOSE 8000

# Define the command to run your Python HTTP server
CMD ["python", "-m", "http.server", "8000"]
