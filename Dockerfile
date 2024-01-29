# Use the official Go image as the base image
FROM golang:alpine

# Set the working directory inside the container
WORKDIR /app/src

# Copy the local package files to the container's workspace
COPY go.* ./

# Download dependencies
RUN go mod download

# Copy the rest of the application source code
COPY . .

# Expose the port that the application will run on
EXPOSE 8080

# Command to run the application
CMD ["go", "run", "main.go"]