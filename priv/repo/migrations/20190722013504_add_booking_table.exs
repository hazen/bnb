defmodule Bnb.Repo.Migrations.AddBookingTable do
  use Ecto.Migration

  def up do
    create table("bookings", primary_key: false) do
      add(:id, :uuid, primary_key: true, autogenerate: true)
      add(:user_id, references("users", type: :uuid, on_delete: :delete_all))
      add(:property_id, references("properties", type: :uuid, on_delete: :delete_all))
      add(:start_date, :utc_datetime)
      add(:end_date, :utc_datetime)
      add(:party_size, :integer)

      timestamps()
    end
  end

  def down do
    drop(table("bookings"))
  end
end
