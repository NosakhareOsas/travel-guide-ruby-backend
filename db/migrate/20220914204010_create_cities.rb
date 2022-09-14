class CreateCities < ActiveRecord::Migration[6.1]
  def change
    create_table :cities do |t|
      t.string :name
      t.integer :minimum_wage
      t.string :currency
      t.string :country
      t.integer :employment_rate
      t.timestamps
    end
  end
end


