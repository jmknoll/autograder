class Report < ActiveRecord::Base
	attr_accessor :reading_score, :writing_score, :math_score, :essay_score

	def scale_reading

		#score conversion by equation
		#raw_score = self.reading_score.to_i
		#scaled_score = ((116*raw_score)/13) + 220
		
		#score conversion by matching
		raw = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67]
		scaled = [220, 240, 260, 270, 290, 300, 310, 320, 330, 340, 350, 360, 370, 380, 380, 390, 400, 410, 410, 420, 430, 440, 440, 450, 460, 460, 470, 480, 480, 490, 500, 500, 510, 520, 520, 530, 530, 540, 550, 550, 560, 570, 570, 580, 590, 600, 600, 610, 620, 620, 630, 640, 650, 660, 670, 680, 680, 690, 700, 720, 730, 740, 760, 770, 790, 800, 800, 800]
		raw_score = self.reading_score.to_i
		index = raw.index(raw_score)
		scaled[index]
	end	

	def scale_math
		raw = [-6, -5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54]
		scaled = [200, 200, 200, 200, 200, 200, 220, 240, 260, 280, 290, 310, 320, 330, 350, 360, 370, 380, 390, 400, 410, 420, 420, 430, 440, 450, 460, 470, 480, 480, 490, 500, 510, 520, 530, 540, 540, 550, 560, 570, 580, 590, 600, 600, 610, 620, 630, 640, 640, 650, 660, 670, 680, 690, 700, 710, 720, 740, 760, 790, 800]
		raw_score = self.math_score.to_i
		index = raw.index(raw_score)
		scaled[index]
	end

	def scale_writing
		#estimated score conversion incorporating essay score
		raw_score_multiple = self.writing_score.to_i
		raw_score_essay = self.essay_score.to_i
		scaled_essay = (80*raw_score_essay)-160
		scaled_mc = ((600*raw_score_multiple)/49)+200
		weighted_mc = (scaled_mc * 1.0) * 0.72
		weighted_essay = (scaled_essay * 1.0) * 0.28
		weighted_mc + weighted_essay
	end
end
