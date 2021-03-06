defmodule Exmeal.Meals.Delete do
  alias Exmeal.{Meal, Repo, Error}

  def call(id) do
    case Repo.get(Meal, id) do
      nil -> {:error, Error.meal_not_found()}
      meal -> Repo.delete(meal)
    end
  end
end
