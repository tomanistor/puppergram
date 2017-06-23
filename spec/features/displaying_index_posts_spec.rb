require 'rails_helper'

RSpec.feature "Displaying Index Posts", type: :feature do

  scenario "index displays correct information of created posts" do
    post_01 = create(:post, caption: "This is the first post")
    post_02 = create(:post, caption: "This is the second post")
    visit "/"
    expect(page).to have_content("This is the first post")
    expect(page).to have_content("This is the second post")
    expect(page).to have_css("img[src*='corgi.jpg']")
  end

end
