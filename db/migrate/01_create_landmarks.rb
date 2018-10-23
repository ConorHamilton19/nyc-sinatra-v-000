class CreateLandmarks < ActiveRecord::Migration
  create_table :landmarks do |t|
    t.string :name 
    t.integer :figure_id
    t.date
end
