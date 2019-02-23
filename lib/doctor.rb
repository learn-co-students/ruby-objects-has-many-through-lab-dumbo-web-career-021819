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
      		x.doctor == self
      		
      	end
    	#selects
    end

    def patients
      Appointment.all.map do |x|
        x.patient
       
    	#collects
    end

    end




	def self.all
		@@all
	end


end
