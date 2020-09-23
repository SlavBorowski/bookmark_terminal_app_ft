require_relative 'bookmark_helper'

class Bookmark
  attr_reader :id, :tags, :title, :url, :description

  include BookmarkHelper

  def initialize(id, title, url, tags, description)
    @id = id
    @title = title
    @url = url
    @tags = tags
    @description = description
  end

  def to_a
    [@id, @title, @url, @tags, @description]
  end

  def self.bookmark_user_input
    bookmark = {}
    INPUTS.each do |input|
      puts "Type out your tags separated with comma's eg. code,reading" if input == :tags
      puts "Whats the #{input}?"
      print '> '
      bookmark[input] = gets.chomp
    end
    bookmark
  end
end
