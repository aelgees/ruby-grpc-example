# frozen_string_literal: true

require 'grpc'
require 'books_services_pb'

# BookController is a controller for handling books requests
class BooksController < ApplicationController
  def index
    response = stub.get_books(Books::EmptyParams.new).to_h
    render json: { data: response[:books] }
  end

  def show
    response = stub.get_book(Books::BookID.new(id: params[:id].to_i)).to_h
    render json: { data: response }
  rescue GRPC::NotFound => e
    render json: Books::BookNotFound.new(message: 'Book not found')
  end

  private

  def stub
    Books::BookService::Stub.new('grpc-server:50051', :this_channel_is_insecure)
  rescue GRPC::BadStatus => e
    abort "ERROR: #{e.message}"
  end
end
