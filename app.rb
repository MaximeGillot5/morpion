require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'player'
require 'game'
require 'application'
require 'board'
require 'boardcase'
require 'show'

#lance le jeu
Application.new.perform