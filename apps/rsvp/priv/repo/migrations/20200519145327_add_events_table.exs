defmodule Rsvp.Repo.Migrations.AddEventsTable do
	use Ecto.Migration

	#Here we can use up/0 and down/0 functions to handle creation of tables and rollback the changes.
	#Also we can use change/0 function to handle both situations.

	def change do

		#create macro
		create table(:events) do

			add :title, :string, size: 50
			add :location, :string, size: 100
			add :date, :naive_datetime

			timestamps
		end


	end
end
