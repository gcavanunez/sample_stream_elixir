defmodule SampleStream.Repo do
  use Ecto.Repo,
    otp_app: :sample_stream,
    adapter: Ecto.Adapters.SQLite3
end
