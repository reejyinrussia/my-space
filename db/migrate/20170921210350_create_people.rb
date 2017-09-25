class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :name
      t.string :house
      t.string :city
      t.string :quote
      t.string :avatar

      t.timestamps
    end
  end
end
