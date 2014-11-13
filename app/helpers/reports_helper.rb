module ReportsHelper
	
	def reading_personal
		if @report.scale_reading > 699
			render "shared/reading_high"
		elsif @report.scale_reading  > 499
			render "shared/reading_medium"
		else 
			render "shared/reading_low"
		end
	end

	def math_personal
		if @report.scale_math > 699
			render "shared/math_high"
		elsif @report.scale_math  > 499
			render "shared/math_medium"
		else 
			render "shared/math_low"
		end
	end

	def writing_personal
		if @report.scale_writing > 699
			render "shared/writing_high"
		elsif @report.scale_writing  > 499
			render "shared/writing_medium"
		else 
			render "shared/writing_low"
		end
	end

end
