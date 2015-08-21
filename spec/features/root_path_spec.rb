require 'rails_helper'

feature 'Visit root path' do
  before(:each) do
    visit '/'
  end
  scenario 'as a regular user' do
    expect( page ).to have_content 'Welcome'
  end

  scenario 'and navigate to members path' do
    click_link("Members")
    expect(current_path).to eq "/members"
  end

  scenario 'and navigate to home teachers path' do
    click_link("Home Teachers")
    expect(current_path).to eq "/home_teachers"
  end
end
