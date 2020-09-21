require_relative 'bookmark_helper'

class Bookmark
  attr_reader :tags, :title, :url, :description

  include BookmarkHelper

  def initialize(title, url, tags, description)
    @title = title
    @url = url
    @tags = tags
    @description = description
  end

  def self.bookmark_user_input
    bookmark = {}
    INPUTS.each do |input|
      puts "Whats the #{input}?"
      print '> '
      bookmark[input] = gets.chomp
    end
    bookmark
  end
end
