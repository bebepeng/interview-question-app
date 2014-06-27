require 'spec_helper'

feature 'Questions page' do
  scenario 'Visitors can view a question' do
    question = Question.create!(:content => "What is your name?")
    visit root_path
    click_on 'Start Interviewing'
    expect(page).to have_content question.content
  end
end