defmodule Uswidi.Repo.Migrations.CreateCandy do
  use Ecto.Migration

  def change do
    create table(:candy) do
      add :name, :string
      add :description, :string
      add :type, :string
      add :img_name, :string

      timestamps()
    end
  end
end
