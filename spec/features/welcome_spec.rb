require 'spec_helper'

feature 'Welcome Page' do
  scenario 'users can see the welcome page' do
    visit root_path
    expect(page).to have_content 'Phone Interview'
    expect(page).to have_link 'Start Interviewing'
  end

  scenario 'user can return to homepage from question pages' do
    visit root_path
    click_on 'Start Interviewing'
    expect(page).to have_link 'Ask me another'
    click_on 'Stop interview'
    expect(page).to have_content 'Phone Interview'
  end
end