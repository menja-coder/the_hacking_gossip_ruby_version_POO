

require 'bundler'
require 'pry'
Bundler.require
require_relative 'lib/router'

Router.new.perform