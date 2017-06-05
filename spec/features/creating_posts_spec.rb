require 'rails_helper'

RSpec.feature "CreatingPosts", type: :feature do
  scenario 'can create a post' do
    visit '/'
    click_link 'New Post'
    attach_file('Image', "spec/files/images/corgi.jpg")
    fill_in 'Caption', with: 'silly dog #corgi'
    click_button 'Create Post'
    expect(page).to have_content('#corgi')
    expect(page).to have_css("img[src*='corgi.jpg']")
  end
end
