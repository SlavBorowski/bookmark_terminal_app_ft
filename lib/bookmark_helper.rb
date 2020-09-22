module BookmarkHelper
  INPUTS = %i[title url tags description].freeze
  HEADINGS = %i[id title url tags description].freeze
  BOOKMARKS_DATABASE = Dir.pwd + "/public/bookmarks.json"
end