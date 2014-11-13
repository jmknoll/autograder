class ReportsController < ApplicationController

	def index	
		@report = Report.new
	end

	def create
		@report = Report.new(report_params)
		@w_bottom_range = (@report.scale_writing/10).floor * 10
		@w_top_range = (@report.scale_writing/10).ceil * 10
	end

	private

	def report_params
		params.require(:report).permit(:reading_score, :math_score, :writing_score, :essay_score)
	end
end

