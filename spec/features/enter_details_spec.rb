feature "testing name form" do
  scenario "testing name == user input from form" do
    visit('/')
    fill_in :name, with: "David"
    fill_in :day, with: "1"
    select(:January, from: :month)
    click_button "Calculate!"
    expect(page).to have_content "Happy Birthday David!"
  end
end