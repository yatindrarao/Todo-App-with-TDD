require "rails_helper"

feature "User sees own todos" do
  scenario "doesn't see other's todos" do
    Todo.create(title: "Buy groceries", email: "yatindra@yopmail.com")

    sign_in_as "dixit@yopmail.com"
    expect(page).not_to display_todo "Buy groceries"  
  end
end
