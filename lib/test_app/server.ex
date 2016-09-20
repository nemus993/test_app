defmodule TestApp.Server do
  use Riffed.Server,
  service: :test_thrift,
  structs: TestApp.Models,
  functions: [add_two_numbers: &TestApp.Handler.add_two_numbers/2],
  server: { :thrift_socket_server,
            port: 2376,
            framed: true,
            max: 10_000,
            socket_opts: [
              recv_timeout: 3000,
              keepalive: true]
          }
end
