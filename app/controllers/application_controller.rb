
require_relative 'config/environment'
require_relative 'models/hero.rb'
require_relative 'models/team.rb'
require 'sinatra/base'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :super_hero
  end

  post '/teams' do
    # @team = Team.new(params[:team])
    #
    # params[:team][:heros].each do |details|
    #   Hero.new(details)
    # end
    # @heros = Hero.all
    @team_name = params[:team][:name]
    
    erb :team
  end
end
