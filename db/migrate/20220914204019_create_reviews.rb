class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :comment
      t.integer :traffic
      t.integer :night_life
      t.integer :safety
      t.integer :friendly_to_foreigner
      t.integer :places_to_work_from
      t.integer :quality_of_internet
      t.integer :quality_of_healthcare
      t.integer :city_id
      t.integer :user_id
      t.timestamps
    end
  end
end
