class CreateEducationdetails < ActiveRecord::Migration
  def change
    create_table :educationdetails do |t|
      t.integer :ssc_yr
      t.string :ssc_institute
      t.string :ssc_percentage
      t.integer :hsc_yr
      t.string :hsc_institute
      t.string :hsc_percentage
      t.string :grad_course
      t.string :grad_specialization
      t.string :grad_institute
      t.integer :grad_yr
      t.string :grad_percentage
      t.string :postgrad_course
      t.string :postgrad_specialization
      t.string :postgrad_institute
      t.integer :postgrad_yr
      t.string :postgrad_percentage
      t.integer :user_id
      t.string :other_qualification
      t.timestamps
    end
  end
end
