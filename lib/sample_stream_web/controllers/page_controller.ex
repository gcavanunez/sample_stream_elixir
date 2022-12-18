defmodule SampleStreamWeb.PageController do
  use SampleStreamWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
