

feature 'Viewing bookmarks' do
  scenario 'visits index page' do
    visit('/')
    expect(page).to have_content 'Bookmark Manager'
  end

  scenario "Directs to /bookmarks" do
    visit ('/bookmarks')
    expect(page).to have_content 'All Bookmarks:'
  end


  scenario 'bookmarks are visible' do
    Bookmark.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')
    Bookmark.create(url: 'http://www.destroyallsoftware.com', title: 'Destroy All Software')
    Bookmark.create(url: 'http://www.google.com', title: 'Google')

    visit '/bookmarks'

    expect(page).to have_link('Makers Academy', href: 'http://www.makersacademy.com')
    expect(page).to have_link('Destroy All Software',  href: 'http://www.destroyallsoftware.com')
    expect(page).to have_link('Google', href: 'http://www.google.com')
  end
end
