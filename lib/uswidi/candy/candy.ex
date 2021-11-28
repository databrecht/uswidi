defmodule Uswidi.Candy do
  use Ecto.Schema
  import Ecto.Changeset

  schema "candy" do
    field :description, :string
    field :img_name, :string
    field :name, :string
    field :type, :string

    timestamps()
  end

  @doc false
  def changeset(candy, attrs) do
    candy
    |> cast(attrs, [:name, :description, :type, :img_name])
    |> validate_required([:name, :description, :type, :img_name])
  end
end
