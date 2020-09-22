# gems
require 'terminal-table'
require 'tty-prompt'
# files
require_relative 'menu'
require_relative 'bookmark'
require_relative 'bookmark_repository'

app = Menu.new
app.router
