require 'bundler'
Bundler.require
require 'pry'

$:.unshift File.expand_path("./../lib", __FILE__)
require 'controller'
require 'gossip'
require 'router'
require 'view'
require 'csv'
Router.new.perform

