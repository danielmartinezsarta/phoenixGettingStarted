
unless (Rsvp.EventQueries.any()) do
  Rsvp.EventQueries.create(Rsvp.Events.changeset(%Rsvp.Events{}, %{date: "2020-05-22 00:00:00", title: "Evento desde Seed 1", location: "Asuncion"}))
  Rsvp.EventQueries.create(Rsvp.Events.changeset(%Rsvp.Events{}, %{date: "2020-05-25 00:00:00", title: "Evento desde Seed 2", location: "Encarnacion"}))
end
