defmodule Rsvp.EventQueries do

	#Query module has functions to consume data from database in Elixir syntax.
	import Ecto.Query

	#We can set an alias for multiple modules at one time using curly brackets.
	alias Rsvp.{Repo, Events}

	def any do
		Repo.one(from e in Events, select: count(e.id)) != 0
	end

	def get_all do
		Repo.all(Events)
	end

	def get_all_for_location(location) do

		#We can cosntruct queries like .NET Linq
		query = from e in Events,
			where: e.location == ^location

		Repo.all(query)
	end

	def get_by_id(id) do
		Repo.get(Events, id)
	end

	def create(event) do
		Repo.insert(event)
	end
end
