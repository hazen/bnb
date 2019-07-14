defmodule Bnb.Repo.Migrations.InitialTables do
  use Ecto.Migration

  def up do
    Bnb.StateEnum.create_type()

    create table("users", primary_key: false) do
      add(:id, :uuid, primary_key: true, autogenerate: true)
      add(:user_name, :string)
      add(:first_name, :string)
      add(:last_name, :string)
      add(:address, :string)
      add(:city, :string)
      add(:state, Bnb.StateEnum.type())
      add(:postal_code, :string)

      timestamps()
    end
  end

  def down do
    drop table("users")

    Bnb.StateEnum.drop_type()
  end
end
