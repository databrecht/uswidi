defmodule Uswidi.Bid do
  use Ecto.Schema
  import Ecto.Changeset

  schema "bids" do
    field :amount, :integer
    field :user_id, :id
    field :candy_id, :id

    timestamps()
  end

  @doc false
  def changeset(bid, attrs) do
    bid
    |> cast(attrs, [:amount])
    |> validate_required([:amount])
  end
end
