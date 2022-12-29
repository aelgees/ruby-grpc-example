# frozen_string_literal: true

require 'grpc'
require_relative '../../app/service/book_service'

# Start the gRPC server
def start_grpc_server
  port = '0.0.0.0:50051'
  s = GRPC::RpcServer.new
  s.add_http2_port(port, :this_port_is_insecure)
  s.handle(BookService)
  s.run_till_terminated
end

Thread.new { start_grpc_server }
