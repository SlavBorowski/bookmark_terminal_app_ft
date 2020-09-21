class Bookmark
  # getter
  attr_reader :tags, :title, :url, :description

	def initialize(title, url, tags, description) 
		@title = title
		@url = url
		@tags = tags
		@description = description
  end
end

# bookmark = Bookmark.new(
# 	"coder academy", 
# 	"https://coderacademy.edu.au", 
# 	["code", "learn"],
# 	"this is a place i want to study at!"
# )

# access attributes on the outside
# getter
# puts bookmark.description

# writing to attributes
# setter

# puts "Whats your new description?"
# print "> "
# bookmark.description = gets.chomp
# puts bookmark.description