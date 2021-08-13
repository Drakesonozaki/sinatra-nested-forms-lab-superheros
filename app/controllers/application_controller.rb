# require '../../config/environment'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    
    get '/' do
        erb :super_hero
    end

    post '/teams' do
        @team_name = params[:team][:name]
        @team_motto = params[:team][:motto]
        @hero_name = []
        @hero_power = []
        @hero_bio = []
        @team_members = params[:team][:members]
        @team_members.each do |hero| 
            @hero_name << hero[:name] #adds values to the hero name param
            @hero_power << hero[:power] #adds values to the hero power param
            @hero_bio << hero[:bio] #adds values to the hero bio param
        end

    erb :team
    end
end
