require 'terminal-table'
require 'tty-prompt'
require_relative 'bookmark_repository'
require_relative 'bookmark_helper'
require_relative 'bookmark'

#Arrange
bm_repo = BookmarkRepository.new
test_tags = 'tag1,tag3'
#Act 
actual = bm_repo.validate_tags(test_tags)

#Assert
expected = ['tag1', 'tag2']

if actual == expected
  puts 'test passed'
else
  puts 'test failed'
end
