module ConcertsHelper
	def setup_concert(concert)
		concert.genre ||= Genre.new
		concert
	end
end
