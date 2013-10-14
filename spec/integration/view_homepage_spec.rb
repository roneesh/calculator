require 'spec_helper'

feature 'Visiting the homepage' do

  scenario 'User sees the calculator page when coming to the site' do
    visit root_path
    expect(page).to have_css "title", text: "Calculator"
  end

  scenario 'User sees the calculator itself' do
    visit root_path
    expect(page).to have_css "div.calculator"
  end

end


