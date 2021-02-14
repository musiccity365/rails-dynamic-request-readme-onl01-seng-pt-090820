require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  it 'shows the description on the show page in a p tag' do
    visit "/posts/#{@post.id}"
    expect(page).to have_css("p", text: "My post desc")
  end
end
