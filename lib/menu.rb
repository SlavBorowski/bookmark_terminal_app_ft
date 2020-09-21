class Menu
  def initialize
    @bookmarks = []
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

  def create_bookmark
    bookmark = Bookmark.bookmark_user_input
    @bookmarks << Bookmark.new(
      bookmark[:title],
      bookmark[:url],
      bookmark[:tags],
      bookmark[:description]
    )
  end

  def router
    loop do
      display_menu
      case selection
      when '1'
        p @bookmarks
      when '2'
        create_bookmark
      when '3'
        exit
      else
        puts 'You need to select 1, 2 or 3!'
      end
    end
  end
end
