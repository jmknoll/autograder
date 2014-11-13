class AddWritingScoreToReports < ActiveRecord::Migration
  def change
  	add_column :reports, :writing_score, :integer
  end
end
