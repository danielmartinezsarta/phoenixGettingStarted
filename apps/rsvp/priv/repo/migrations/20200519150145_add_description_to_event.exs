defmodule Rsvp.Repo.Migrations.AddDescriptionToEvent do
	use Ecto.Migration

	def change do
		#We can also use alter macro to modify an existing table
		alter table(:events) do
			add :description, :string, size: 1000
		end

	end
end
