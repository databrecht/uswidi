defmodule Uswidi.Repo.Migrations.CreateBids do
  use Ecto.Migration

  def change do
    create table(:bids) do
      add :amount, :integer
      add :user_id, references(:users, on_delete: :nothing)
      add :candy_id, references(:candy, on_delete: :nothing)

      timestamps()
    end

    create index(:bids, [:user_id])
    create index(:bids, [:candy_id])
  end
end
