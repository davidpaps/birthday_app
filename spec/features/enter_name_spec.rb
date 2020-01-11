feature "testing name form" do
  scenario "testing name == user input from form" do
    visit('/')
    fill_in :name, with: "David"
    click_button "Submit"
    expect(page).to have_content "Happy Birthday David!"
  end
end