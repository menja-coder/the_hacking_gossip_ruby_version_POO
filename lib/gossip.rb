require 'bundler'
require 'pry'
Bundler.require

require 'csv'
require_relative 'view'
class Gossip
    attr_reader :author, :content
        def initialize(author, content)
            @content = content
            @author = author
        end

        def save
            CSV.open('../db/gossip.csv', 'a+') do |csv|
            csv << ["Auteur", "Gossips"]
            csv << [@author, @content]
            end  
        end
end
