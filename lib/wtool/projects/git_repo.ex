defmodule Wtool.Projects.GitRepo do
  use Ecto.Schema
  import Ecto.Changeset

  alias Wtool.Project

  schema "git_repos" do
    field :name, :string
    field :link, :string
    field :external_id, :string

    belongs_to :project, Project

    timestamps()
  end

  def changeset(params) do
    %__MODULE__{}
    |> cast(params, [:name, :link, :external_id, :project_id])
    |> validate_required([:name, :link, :external_id])
  end
end
