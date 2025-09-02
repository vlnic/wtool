defmodule Wtool.Project do
  use Ecto.Schema
  import Ecto.Changeset

  schema "projects" do
    field :name, :string
    field :description, :string, default: nil
  end

  def changeset(params) do
    %__MODULE__{}
    |> cast(params, [:name, :description])
    |> validate_required([:name])
    |> unique_constraint([:name])
  end
end
