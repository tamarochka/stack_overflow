require 'rails_helper'

feature "User posts a new question" do

# As a user
# I want to post a question
# So that I can receive help from others
#
# Acceptance Criteria
#
# - I must provide a title that is at least 40 characters long
it "creates invalid question" do
    # Visit the page containing the new question form
    visit '/questions/new'

    # Fill in the input field with the 'Title' label
    fill_in "Title", with: "You may wish to organize groups of controllers under a namespace. Most commonly, you might group a number of administrative controllers under an Admin:: namespace. You would place these controllers under the app/controllers/admin directory, and you can group them together in your router"
    # click_on "Create Question"
# - I must provide a description that is at least 150 characters long
fill_in "Description", with: "You may wish to organize groups of controllers under a namespace. Most commonly, you might group a number of administrative controllers under an Admin:: namespace. You would place these controllers under the app/controllers/admin directory, and you can group them together in your ro"

  click_on "Create Question"
    expect(page).to have_content "title is too long"
  end
end

# - I must be presented with errors if I fill out the form incorrectly
