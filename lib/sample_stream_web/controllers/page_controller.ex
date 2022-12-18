defmodule SampleStreamWeb.PageController do
  use SampleStreamWeb, :controller
  @chunk_size 128

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def mp3(conn, _params) do
    conn =
      conn
      |> put_resp_header("content-type", "audio/mp3")
      |> send_chunked(200)

    File.stream!("lib/sample4.mp3", [], @chunk_size)
    |> Enum.into(conn)
  end
end
