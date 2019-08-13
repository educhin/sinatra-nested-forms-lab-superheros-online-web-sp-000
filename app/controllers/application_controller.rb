
# require_relative 'config/environment'
# require_relative 'models/hero.rb'
# require_relative 'models/team.rb'
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
    @team_motto = params[:team][:motto]
    @hero_1_name = params[:team][:heros][0][:name]
    @hero_1_power = params[:team][:heros][0][:power]
    @hero_1_bio = params[:team][:heros][0][:bio]
    @hero_2_name = params[:team][:heros][1][:name]
    @hero_2_power = params[:team][:heros][1][:power]
    @hero_2_bio = params[:team][:heros][1][:bio]
    @hero_3_name = params[:team][:heros][2][:name]
    @hero_3_power = params[:team][:heros][2][:power]
    @hero_3_bio = params[:team][:heros][2][:bio]
    erb :team
  end
end
