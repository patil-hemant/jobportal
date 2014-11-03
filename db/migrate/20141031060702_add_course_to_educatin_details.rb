class AddCourseToEducatinDetails < ActiveRecord::Migration
  def change
    add_column :education_details, :course, :string
  end
end
