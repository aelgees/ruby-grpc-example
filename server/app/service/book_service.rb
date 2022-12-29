# frozen_string_literal: true

require 'books_services_pb'

# Purpose: Service to handle books actions
class BookService < Books::BookService::Service
  def get_books(_request, _call)
    books = datas
    Books::Books.new(books:)
  end

  def get_book(request, _call)
    books = datas
    book = books.find { |b| b['id'] == request.id }
    raise GRPC::NotFound, 'Book not found' if book.nil?

    Books::Book.new(book)
  end

  private

  def datas
    file = File.read('db/books.json')
    JSON.parse(file)
  end
end
