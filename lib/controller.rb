require 'bundler'
require 'pry'
Bundler.require
require_relative 'gossip'
require_relative 'view'
require 'csv'

class Controller

    def initialize
        @view = View.new
    end

    def create_gossip
        params = Hash.new
        params = @view.create_gossip
        @gossip =  Gossip.new(params[:author], params[:content])
        @gossip.save
    end

    def show_gossip

    end

end
