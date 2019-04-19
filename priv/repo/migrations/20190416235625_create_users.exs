defmodule MyApp.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    execute "CREATE EXTENSION IF NOT EXISTS citext",  "DROP EXTENSION IF EXISTS citext"
    create table(:users) do
      add :email, :citext

      timestamps()
    end
    create index(:users, [:email], unique: true)

  end
end
