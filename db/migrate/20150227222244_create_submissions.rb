class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.string :name
      t.string :description
      t.string :link
      t.string :starttime
      t.string :endtime
      t.string :latitude
      t.string :longitude
      t.string :day
      t.boolean :verified, :default => false

      t.timestamps
    end
  end
end
