defmodule Rsvp.Events do
	use Ecto.Schema

	#Changeset enables us to validate formats and required fields.
	import Ecto.Changeset


	#schema macro defines a new model, "events" is the name of the table
	schema "events" do

		#if we don't define any primary key, Ecto will create it as integer by default

		field :title, :string       #by default, all fields are :string as data type but is better to deifne it explicit.
		field :location, :string
		field :date, :naive_datetime  #Datetime is not a primitive data type, but an Ecto data type.
		field :description, :string

		timestamps()                  #timestamps keyword generates inserted_at and update_at fields in the table.

	end


	#Define atom maps for required and optional fields.
	@required_fields ~w(title location date)a
	@optional_fields ~w(description)a

	#define a changeset function that execute validations to model, receive event and params as empty map.
	def changeset(event, params \\ %{}) do
		event
		|> cast(params, @required_fields ++ @optional_fields)	#cast will match all fields of the event with required and optional fields
		|> validate_required(@required_fields)					#validate_required will validate that all fields in required fields have values within event variable.
		|> validate_change(:date, &must_be_future/2)			#validate_change will validate a field with custom defined functions.
	end

	#define a private function to check if received date is past and call get_error function.
	defp must_be_future(_, value) do
		NaiveDateTime.compare(value, NaiveDateTime.local_now(Calendar.ISO))
		|> get_error
	end

	defp get_error(comparison) when comparison == :lt, do: [date: "Cannot be in the past."]
	defp get_error(_), do: []




end
