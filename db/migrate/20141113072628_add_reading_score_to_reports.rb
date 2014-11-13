class AddReadingScoreToReports < ActiveRecord::Migration
  def change
  	add_column :reports, :reading_score, :integer
  end
end
