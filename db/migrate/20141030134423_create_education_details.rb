class CreateEducationDetails < ActiveRecord::Migration
  def change
    create_table :education_details do |t|
      t.string :name
      t.string :institute
      t.date :passout_year
      t.string :score
      t.integer :user_id

      t.timestamps
    end
  end
end
