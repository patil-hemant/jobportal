class AddPgPassoutYearToEducationDetails < ActiveRecord::Migration
  def change
    add_column :education_details, :pg_passout_year, :date
  end
end
