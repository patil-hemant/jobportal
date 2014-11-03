class AddPgInstituteToEducationDetails < ActiveRecord::Migration
  def change
    add_column :education_details, :pg_institute, :string
  end
end
