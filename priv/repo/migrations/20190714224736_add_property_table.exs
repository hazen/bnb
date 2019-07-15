defmodule Bnb.Repo.Migrations.AddPropertyTable do
  use Ecto.Migration

  def up do
    Bnb.PropertyTypeEnum.create_type()

    create table("properties", primary_key: false) do
      add(:id, :uuid, primary_key: true, autogenerate: true)
      add(:property_type, Bnb.PropertyTypeEnum.type())
      add(:title, :string)
      add(:description, :text)
      add(:num_beds, :integer)
      add(:latitude, :float)
      add(:longitude, :float)
      add(:address, :string)
      add(:phone, :string)
      add(:city, :string)
      add(:state, Bnb.StateEnum.type())
      add(:postal_code, :string)

      timestamps()
    end

    alter table("users") do
      add(:phone, :string)
    end
  end

  def down do
    drop table("properties")

    Bnb.PropertyTypeEnum.drop_type()

    alter table("users") do
      remove(:phone)
    end
  end
end
