# Ruby on Rails gRPC Example

This is an example Ruby on Rails application that demonstrates how to use gRPC in a Rails project.

## Prerequisites
* Docker 20 or higher
* Docker Compose 1.29 or higher
* Ruby 3.1.2 or higher
* Rails 7.0.3 or higher
* The **bundler** gem (run **gem install bundler** to install)
* The **grpc** gem (run **gem install grpc** to install)
* The **grpc-tools** gem (run **gem install grpc-tools** to install)

## Setup
1. Clone the repository: `git clone https://github.com/aelgees/ruby-grpc-example.git`
2. Navigate to the project directory: `cd ruby-grpc-example`
3. Generate `.proto` file with run **./generate_proto.sh**
This will generate two files in the **lib** directory on client and server: `books_pb.rb` and `books_services_pb.rb`. The first file contains the message definitions for your `.proto` file, and the second file contains the gRPC service definitions.

## How to run
First create network, run the following command:

    make create-network
    
To start the Rails server and client, run the following command:

    make start
    
To stop the Rails server and client, run the following command:

    make stop
    
## Information
Here is a description of the two endpoints in the API you provided:

**localhost:8002/books** - This endpoint returns a list of books in the form of a JSON object with a "data" field. The "data" field is an array of objects, each representing a book with the following fields:

- "id": a unique identifier for the book
- "title": the title of the book
- "description": a brief description of the book
- "tags": an array of tags associated with the book
- "price": the price of the book

**localhost:8002/books/:id** - This endpoint returns a single book in the form of a JSON object with a "data" field. The "data" field is an object representing a book with the same fields as described for the **localhost:8002/books** endpoint. The :id parameter in the endpoint specifies the unique identifier of the book you want to retrieve.

For example, if you make a GET request to **localhost:8002/books/1001**, the API will return the book with the id 1001.
