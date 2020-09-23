require 'tty-prompt'
require_relative '../lib/bookmark'

RSpec.describe 'Bookmark Model' do
  it 'Bookmark.new create an object' do
    # Arrange
    test_bookmark = Bookmark.new(
      1,
      'Test',
      'www.example.com',
      ['tag1', 'tag2'],
      'Description'
    )
    # Act
    actual_title = test_bookmark.title 
    # Assert
    expect(actual_title).to eq('Test')
  end

  it 'can become an array' do
    # Arrange
    test_bookmark = Bookmark.new(
      1,
      'Test',
      'www.example.com',
      ['tag1', 'tag2'],
      'Description'
    )
    # Act
    test_array = test_bookmark.to_a

    # Assert
    expect(test_array[0]).to eq(test_bookmark.id)
    expect(test_array[2]).to eq(test_bookmark.url)
    expect(test_array[4]).to eq(test_bookmark.description)
  end
end
