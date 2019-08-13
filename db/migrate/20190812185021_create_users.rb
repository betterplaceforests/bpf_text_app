class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :phone_number
      t.datetime :forest_visit_date
      t.string :forest_steward
      t.string :preferred_forest

      t.timestamps
    end
  end
end
