defmodule Bnb.Model.Property do
  use Ecto.Schema
  import Ecto.Changeset

  @type t() :: %__MODULE__{}
  @primary_key {:id, Ecto.UUID, autogenerate: true}

  schema "properties" do
    field :property_type, Bnb.PropertyTypeEnum
    field :title, :string
    field :description, :string
    field :num_beds, :integer
    field :latitude, :float
    field :longitude, :float
    field :address, :string
    field :city, :string
    field :state, Bnb.StateEnum
    field :postal_code, :string
  end

  @permitted_fields ~w{property_type title description num_beds latitude longitude address city state postal_code}a
  @required_fields []

  def changeset(model, params \\ %{}) do
    model
    |> cast(params, @permitted_fields)
    |> validate_required(@required_fields)
  end
end
