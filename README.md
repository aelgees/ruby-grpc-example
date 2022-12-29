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