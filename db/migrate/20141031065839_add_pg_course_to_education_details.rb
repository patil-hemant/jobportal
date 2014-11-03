class AddPgCourseToEducationDetails < ActiveRecord::Migration
  def change
    add_column :education_details, :pg_course, :string
  end
end
