require_relative 'bookmark_helper'

class Menu
  include BookmarkHelper

  def initialize
    @bookmark_repository = BookmarkRepository.new
  end

  def selection
    PROMPT.select('Welcome to the bookmarks app!') do |menu|
      menu.choice({ name: 'View all bookmarks', value: '1' })
      menu.choice({ name: 'Create bookmark', value: '2' })
      menu.choice({ name: 'Exit', value: '3' })
    end
  end

  def terminal_table
    rows = @bookmark_repository.bookmarks.map do |bookmark|
      bookmark.to_a 
    end
    table = Terminal::Table.new({ headings: HEADINGS, rows: rows })
    puts table
  end

  def quit
    @bookmark_repository.write_bookmarks
    exit
  end

  def router
    loop do
      case selection
      when '1'
        terminal_table
      when '2'
        @bookmark_repository.create_bookmark
      when '3'
        quit
      end
    end
  end
end
