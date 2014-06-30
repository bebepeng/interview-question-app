require 'spec_helper'

feature 'Welcome Page' do
  scenario 'users can see the welcome page' do
    visit root_path
    expect(page).to have_content 'Phone Interview'
    expect(page).to have_link 'Start Interviewing'
  end
end