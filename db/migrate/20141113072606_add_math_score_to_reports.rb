class AddMathScoreToReports < ActiveRecord::Migration
  def change
  	add_column :reports, :math_score, :integer
  end
end
