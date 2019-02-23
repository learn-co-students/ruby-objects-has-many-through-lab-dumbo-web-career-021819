class Appointment

	attr_accessor :date, :patient, :doctor

	@@all = []
    def initialize(date,patient,doctor)
	@date = date #string input for date eg. "Monday, August 1st"
	@patient = patient
	@doctor = doctor
	@@all << self
    end

	def self.all
		@@all
	end
end