require "rails_helper"

feature "User sees own todos" do
  scenario "and doesn't see others' todos" do
    Todo.create!(title: "Buy kapenta", email: "not-mulenga@example.com")

    sign_in_as "mulenga@example.com"

    expect(page).not_to have_css ".todos li", text: "Buy kapenta"
  end
end
