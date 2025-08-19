defmodule Wtool.Projects.Teammate do
  use Ecto.Schema
  import Ecto.Changeset

  schema "teammates" do
    field :fio, :string
    field :email, :string
    field :external_alias, :string

    timestamps()
  end

  def changeset(params) do
    %__MODULE__{}
    |> cast(params, [:fio, :email, :external_alias])
    |> validate_required([:fio, :external_alias])
  end
end
