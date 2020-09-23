require 'terminal-table'
require 'tty-prompt'
require_relative 'bookmark_repository'
require_relative 'bookmark_helper'
require_relative 'bookmark'
# Arrange
bm_repo = BookmarkRepository.new
# Act
bm_repo.create_bookmark

# Assert

if bm_repo.bookmarks.last.title == 'Test title'
  puts "Test passed"
else
  puts "Test failed"
end
