defmodule Inmana.Welcomer do
  
  def welcomer(%{"name" => name, "age" => age}) do
    age = String.to_integer(age)

    name
    |> String.trim()
    |> String.downcase()
    |> evacuate(age)
  end

  def evacuate("banana", 42) do
    {:ok, "You are very special"}
  end

  def evacuate(name, age) when age >= 18 do
    {:ok, "Welcome #{name}"}
  end

  def evacuate(name, _age) do
    {:error, "You shell not pass #{name}"}
  end
end
