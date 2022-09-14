class City < ActiveRecord::Base
    has_many :reviews
    has_many :reviewers, through: :reviews 
end