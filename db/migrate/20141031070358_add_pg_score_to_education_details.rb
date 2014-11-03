class AddPgScoreToEducationDetails < ActiveRecord::Migration
  def change
    add_column :education_details, :pg_score, :string
  end
end
