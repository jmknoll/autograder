class ReportsController < ApplicationController

	def index	
		@report = Report.new
	end

	def create
		@report = Report.new(report_params)
	end

	private

	def report_params
		params.require(:report).permit(:reading_score, :math_score, :writing_score)
	end
end

