defmodule Rsvp.Events do
  use Ecto.Schema

    #schema macro defines a new model, "events" is the name of the table
    schema "events" do

      #if we don't define any primary key, Ecto will create it as integer by default

      field :title, :string       #by default, all fields are :string as data type but is better to deifne it explicit.
      field :location, :string
      field :date, :naive_datetime  #Datetime is not a primitive data type, but an Ecto data type.
      field :description, :string

      timestamps()                  #timestamps keyword generates inserted_at and update_at fields in the table.

    end


end
