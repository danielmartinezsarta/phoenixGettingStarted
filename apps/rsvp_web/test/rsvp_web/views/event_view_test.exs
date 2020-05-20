defmodule Rsvp.EventViewTest do
  use RsvpWeb.ConnCase, async: true

  @tag current: true
  test "Should convert a date (NaiveDateTime) to a D/M/Y format" do
    {_, date} = NaiveDateTime.from_erl({{2020, 5, 20}, {00, 00, 00}})
    formatted = RsvpWeb.EventView.format_date(date)
    assert formatted == "20/5/2020"
  end
end
