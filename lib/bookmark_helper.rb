module BookmarkHelper
  path = File.dirname(__FILE__).split("/")
  path.pop
  BOOKMARKS_DATABASE = "#{path.join("/")}/public/bookmarks.json"
  INPUTS = %i[title url tags description].freeze
  HEADINGS = %i[id title url tags description].freeze
  PROMPT = TTY::Prompt.new
end
