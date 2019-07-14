defmodule Bnb.Model.User do
  use Ecto.Schema
  import Ecto.Changeset

  @type t() :: %__MODULE__{}
  @primary_key {:id, Ecto.UUID, autogenerate: true}

  schema "users" do
    field :user_name, :string
    field :first_name, :string
    field :last_name, :string
    field :address, :string
    field :city, :string
    field :state, Bnb.StateEnum
    field :postal_code, :string

    timestamps()
  end

  @required_fields []
  @permitted_fields ~w{user_name first_name last_name address city state postal_code}a

  def changeset(model, params \\ %{}) do
    model
    |> cast(params, @permitted_fields)
    |> validate_required(@required_fields)
  end
end
