require "rails_helper"

feature "User visit homepage" do
  scenario "user is not signed in" do
    visit root_path

    expect(page).to have_css "h1", text: "Favors"
  end

  scenario "user is signed in" do
    sign_in

    visit root_path

    expect(page).to have_css "h1", text: "Favors"
    expect(page).to have_content "lists"
  end
end
