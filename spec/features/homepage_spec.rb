feature "testing homepage" do
  scenario "checks homepage for text" do
    visit('/')
    expect(page).to have_content "Birthday Calculator!"
  end
end