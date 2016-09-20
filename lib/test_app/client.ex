defmodule TestApp.Client do
  use Riffed.Client,
  auto_import_structs: false,
  structs: TestApp.Models,
  client_opts: [
    host: "localhost",
    port: 2376,
    retries: 3,
    framed: true
  ],
  service: :test_thrift,
  import: [:add_two_numbers]

end
