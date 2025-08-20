defmodule Wtool.Projects.Profile do
  use Ecto.Schema
  import Ecto.Changeset

  alias Wtool.Integrations
  alias Wtool.Projects.Teammate

  schema "profiles" do
    field :sync_source, :string
    field :data, :map, default: %{}
    field :profile_link, :string, default: nil

    belongs_to :project, Wtool.Project
    belongs_to :teammate, Teammate

    timestamps()
  end

  def changeset(params) do
    %__MODULE__{}
    |> cast(params, [:sync_source, :data, :profile_link])
    |> validate_inclusion(:sync_source, Integrations.list())
  end
end
