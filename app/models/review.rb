class Review < ActiveRecord::Base
    belongs_to :review
    belongs_to :city
end