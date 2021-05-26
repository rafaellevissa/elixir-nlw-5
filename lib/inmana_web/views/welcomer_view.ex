defmodule InmanaWeb.WelcomerView do
  use InmanaWeb , :view

  def render("index.json", %{message: message}) do
    %{
      message: message
    }
  end
end
