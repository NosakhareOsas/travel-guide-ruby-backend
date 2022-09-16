class City < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews 

    # def average_rank criteria
    #     self.reviews.average(:criteria).to_f
    # end
end