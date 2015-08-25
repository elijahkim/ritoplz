require "rails_helper"

feature "Submitting a request" do
  scenario "submitting successfully" do
    visit root_path

    fill_in "request_content", with: "nerf Irelia"
    click_on "Rito Plz"

    expect(page).to have_content "nerf Irelia"
  end
end
