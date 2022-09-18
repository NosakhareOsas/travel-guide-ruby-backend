class ApplicationController < Sinatra::Base 

    set :default_content_type, 'application/json'

    get '/cities' do
        cities = City.all
        cities.to_json
    end

    get '/cities/rank_by/:rank' do
        cities = City.all.order(params[:rank]).reverse
        cities.to_json
    end

    get '/cities/:id' do
        city = City.find(params[:id])
        city.to_json(include: {
            reviews: {only: [:comment, :traffic, :night_life, :friendly_to_foreigner, :places_to_work_from, :quality_of_healthcare, :quality_of_internet, :updated_at, :id], include: {
                user: { only: [:name]}
            }}
        })
    end

    get '/users' do
        users = User.all
        users.to_json
    end

    post '/reviews' do
        review = Review.create(
            comment: params[:comment],
            traffic: params[:traffic],
            night_life: params[:night_life],
            friendly_to_foreigner: params[:friendly_to_foreigner],
            places_to_work_from: params[:places_to_work_from],
            quality_of_internet: params[:quality_of_internet],
            quality_of_healthcare: params[:quality_of_healthcare],
            city_id: params[:city_id],
            user_id: params[:user_id]
        )
        review.to_json
    end

    delete '/reviews/:id' do
        review = Review.find(params[:id])
        review.destroy
        review.to_json
    end
    
    patch '/reviews/:id' do
        review = Review.find(params[:id])
        review.update(
            comment: params[:comment],
            traffic: params[:traffic],
            night_life: params[:night_life],
            friendly_to_foreigner: params[:friendly_to_foreigner],
            places_to_work_from: params[:places_to_work_from],
            quality_of_internet: params[:quality_of_internet],
            quality_of_healthcare: params[:quality_of_healthcare]
        )
        review.to_json
    end
end    