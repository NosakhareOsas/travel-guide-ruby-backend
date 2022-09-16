class ApplicationController < Sinatra::Base 

    set :default_content_type, 'application/json'

    get '/cities' do
        cities = City.all
        cities.to_json
    end

    get '/cities/:id' do
        city = City.find(params[:id])
        city.to_json(include: {
            reviews: {only: [:comment, :traffic, :safety, :night_life, :friendly_to_foreigner, :places_to_work_from, :quality_of_healthcare, :quality_of_internet], include: {
                user: { only: [:name]}
            }}
        })
    end

    get '/users/:id' do
        users = User.all
        users.to_json
    end

    
end    