defmodule StatusManager.PageController do
  use StatusManager.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
