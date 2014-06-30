require 'spec_helper'

feature 'Questions page' do
  scenario 'Visitors can view a question', js: true do
    question = Question.create!(:content => "What is your name?")
    visit root_path
    click_on 'Start Interviewing'
    expect(page).to have_content question.content
  end

  scenario 'Visitors can view another question', js: true do
    question1 = Question.create!(:content => "What is your name?")
    question2 = Question.create!(:content => "Why are you here?")
    visit question_path
    expect(page).to have_content question1.content

    click_on 'Ask me another'
    expect(page).to have_no_content question1.content
    expect(page).to have_content question2.content
  end

  scenario 'Vistors can view a list of interview questions' do
    question1 = Question.create!(:content => "What is your name?")
    question2 = Question.create!(:content => "Why are you here?")
    visit root_path
    click_on 'View All Interview Questions'
    expect(page).to have_content question1.content
    expect(page).to have_content question2.content
  end
end