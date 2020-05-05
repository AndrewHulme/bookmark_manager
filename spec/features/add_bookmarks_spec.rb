feature 'add a bookmark' do
  scenario 'add a bookmark' do
    visit('/bookmarks/new')
    fill_in 'url', with: "www.marius.com"
    click_button "Submit"

    expect(page).to have_content "www.marius.com"
  end
end
