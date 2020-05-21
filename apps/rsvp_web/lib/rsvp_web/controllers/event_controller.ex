defmodule RsvpWeb.EventController do
	use RsvpWeb, :controller

	def show(conn, %{"id" => id}) do 		#controller action signature have 2 arguments, first conn is the request information, and params is a map with all params.
											#we can use elixir pattern matching for extract id param directly in signature since we do not need any other parameter.

		event = Rsvp.EventQueries.get_by_id(id)
		|> IO.inspect()						#IO.inspect() prints into the terminal the content of event variable.


		render conn, "details.html", event: event
	end

	def list(conn, _params) do
		events = Rsvp.EventQueries.get_all()
		render conn, "list.html", events: events
	end


end
