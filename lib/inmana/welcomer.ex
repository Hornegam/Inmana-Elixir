defmodule Inmana.Welcomer do
  def welcome(%{"name" => name, "age" => age}) do
    age = String.to_integer(age)

    name
    |> String.trim()
    |> String.downcase()
    |> evaluate(age)
  end

  defp evaluate("banana", 42) do
    {:ok, "Você é especial"}
  end

  defp evaluate(name, age) when age >= 18 do
    {:ok, "Você #{name}, não é especial"}
  end

  defp evaluate(name, age) do
    {:error, "You shall not pass!"}
  end
end
