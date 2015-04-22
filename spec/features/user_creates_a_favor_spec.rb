require "rails_helper"

feature "user creates a favor" do
  scenario "with valid data" do
    visit favors_path

    click_on "Ask new favor"
    fill_in "Contents", with: "buy me a milk"
    fill_in "Friend", with: "rollin"
    click_on "Ask It!"

    expect(page).to have_content("buy me a milk")
    expect(page).to have_content("rollin")
  end
end
