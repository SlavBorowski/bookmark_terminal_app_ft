require_relative 'bookmark_helper'

class Menu
  include BookmarkHelper

  def initialize
    @bookmark_repository = BookmarkRepository.new
  end

  def display_menu
    puts 'Welcome to the bookmarks app!'
    puts '1. View all bookmarks'
    puts '2. Create bookmark'
    puts '3. Exit'
  end

  def selection
    print '> '
    gets.chomp
  end

  def terminal_table
    rows = @bookmark_repository.bookmarks.map do |bookmark|
      [bookmark.id, bookmark.title, bookmark.url, bookmark.tags, bookmark.description]
    end
    table = Terminal::Table.new({ headings: HEADINGS, rows: rows })
    puts table
  end

  def router
    loop do
      display_menu
      case selection
      when '1'
        terminal_table
      when '2'
        @bookmark_repository.create_bookmark
      when '3'
        @bookmark_repository.write_bookmarks
        exit
      else
        puts 'You need to select 1, 2 or 3!'
      end
    end
  end
end
