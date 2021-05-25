defmodule InmanaWeb.WelcomerController do
  use InmanaWeb, :controller
  alias Inmana.Welcomer

  def index(conn, params) do
    params |> Welcomer.welcomer() |> handler_response(conn)
  end

  def handler_response({:ok, message}, conn), do: response_handler(conn, message, :ok)

  def handler_response({:error, message}, conn), do: response_handler(conn, message, :bad_request)

  defp response_handler(conn, message, status) do
    conn |> put_status(status) |> json(%{message: message})
  end
end
