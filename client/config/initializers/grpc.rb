require 'grpc'

GRPC_CLIENT = GRPC::Core::Channel.new('grpc-server:50051', {}, :this_channel_is_insecure)
