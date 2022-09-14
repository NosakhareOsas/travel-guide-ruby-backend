class Reviewer < ActiveRecord::Base
    has_many :reviews
    has_many :cities, through: :reviews 
end