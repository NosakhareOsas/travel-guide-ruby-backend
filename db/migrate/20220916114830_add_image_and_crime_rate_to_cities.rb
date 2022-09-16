class AddImageAndCrimeRateToCities < ActiveRecord::Migration[6.1]
  def change
    add_column :cities, :image, :sting
    add_column :cities, :crime_rate, :integer
  end
end
