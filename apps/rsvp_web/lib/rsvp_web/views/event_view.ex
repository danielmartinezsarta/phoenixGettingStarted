defmodule RsvpWeb.EventView do
	use RsvpWeb, :view

	#we can define functions into the view file for use within the template file.
	def format_date(date) do
		{{y,m,d}, _} = NaiveDateTime.to_erl(date)

		"#{d}/#{m}/#{y}"
	end
end
