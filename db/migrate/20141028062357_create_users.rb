class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.integer :contact_no
      t.string :address
      t.text   :skills
      t.string :twitter_url
      t.string :linkedin_url
      t.string :blog_url
      t.string :current_location
      t.string :ready_to_relocate
      t.string :image
      t.string :resume
      t.timestamps
    end
  end
end
