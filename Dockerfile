## Specify the base image for Go application
FROM golang:alpine3.15
# Create an /app dir within our image
# to hold application source files
RUN mkdir /app
# Copy everything in the root directory
# to /app
ADD . /app
# Specify that any future commands will be executed
# inside /app dir
WORKDIR /app
# Run `go build` to compile the binary of the Go program
RUN go build -o main .
# Start command which kicks off newly created binary
CMD ["/app/main"]