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
      		
      	end
      	#selects
      end


    def doctors
    	#collects
    	Appointment.all.map do |x|
        x.doctor
    end
    end


	def self.all
		@@all
	end
end
