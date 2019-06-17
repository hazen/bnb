defmodule BnbWeb.PageController do
  use BnbWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
