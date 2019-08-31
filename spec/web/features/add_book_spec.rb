# frozen_string_literal: true

require 'features_helper'

RSpec.describe 'Add a book' do
  after do
    BookRepository.new.clear
  end

  it 'can create a new book' do
    visit '/book/new'

    within 'form#book-form' do
      fill_in 'Titie', with: 'New book'
      fill_in 'Author', with: 'Some author'

      click_button 'Create'
    end

    expect(page).to have_current_path('/books')
    expect(page).to have_current('New book')
  end
end
