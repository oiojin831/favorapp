require "rails_helper"

feature "user creates a favor" do
  scenario "with valid data" do
    visit favors_path

    click_on "Ask new favor"

    create_favor(contents: "buy me a milk", friend: "rollin")

    expect(page).to have_content("buy me a milk")
    expect(page).to have_content("rollin")
  end
end
