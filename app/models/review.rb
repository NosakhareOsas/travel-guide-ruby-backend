class City < ActiveRecord::Base
    belongs_to :reviewers
    belongs_to :cities
end