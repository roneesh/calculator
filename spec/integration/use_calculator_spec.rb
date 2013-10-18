require 'spec_helper'

feature 'Using the calculator' do

  scenario 'The calculator has a keybaord' do
    visit root_path
    expect(page).to have_css "div.calculator ul.keyboard"
  end

  scenario 'The calculator keyboard has numbers' do
    visit root_path
    (0..9).each do |number|
      expect(page).to have_css "ul.keyboard a li", text: "#{number}"
    end
  end

  scenario 'the calculator keyboard has operators' do 
    visit root_path
    operators = ["+", ".", "x", "-", "/", "=", "C", "AC"]
    operators.each do |operator|
      expect(page).to have_css "ul.keyboard li", text: "#{operator}"
    end
  end

  scenario 'each calculator button is a clickable AJAX link' do
    visit root_path
    keyboard = [ (0..9), "+", ".", "x", "-", "/", "=", "C", "AC"]
    keyboard.each do |key|
      expect(page).to have_css "ul.keyboard a[data-remote=true]" 
    end
  end

end