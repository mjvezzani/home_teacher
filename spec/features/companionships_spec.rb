require 'rails_helper'

feature "User creates new companionship" do
  before(:each) do
    @companionship = Companionship.create
    @ht1 = HomeTeacher.create(firstname: "Mike", lastname: "Vezzani")
    @ht2 = HomeTeacher.create(firstname: "Chris", lastname: "Klomp")
    @ht3 = HomeTeacher.create(firstname: "Jeremy", lastname: "Koontz")
    @ht4 = HomeTeacher.create(firstname: "John", lastname: "Tanner")
  end

  scenario "they see the companionships on the page" do
    visit '/companionships/new'
    save_and_open_page
    binding.pry
    select("#{@ht1.id}", from: "Companion 1")
    select("#{@ht2.id}", from: "Companion 2")
    click_button("Create companionship")

    expect(current_path).to eq companionships_path
    expect(page).to have_content "Mike Vezzani"
    expect(page).to have_content "Chris Klomp"
  end

end
