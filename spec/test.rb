require 'pry'

class Doctor

	@@all = []
attr_accessor :name

def initialize(name)
	@name = name
	@@all << self
end


    def new_appointment(patient,date)
    	Appointment.new(date,patient,self)
    end

    def appointments
    	Appointment.all.select do |x|
binding.pry
      		x.doctor == self
      		
      	end
    	#selects
    end

    def patients
    	#collects

    end




	def self.all
		@@all
	end


end


class Patient

	attr_accessor :name

	@@all = []
    def initialize(name)
	@name = name
	@@all << self
    end

    def new_appointment(doctor,date)
    	Appointment.new(date,self,doctor)
    end

      def appointments
      	Appointment.all.select do |x|
      		x.patient == self
      		binding.pry
      	end
      	#selects
    end
end



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

doctor_who = Doctor.new('The Doctor')
hevydevy = Patient.new('Devin Townsend')
appointment = doctor_who.new_appointment(hevydevy, 'Friday, January 32nd')

p appointment.doctor



















