require "rails_helper"

feature "User completes a todo" do
  scenario "successfully" do
    sign_in

    click_on "Add a new todo"
    task_todo = "Buy bread"
    fill_in "Title", with: task_todo
    click_on "Create Todo"

    click_on "Mark as complete"

    expect(page).to have_current_path(root_path)
    expect(page).to have_css ".todos li.completed", text: task_todo
  end
end
