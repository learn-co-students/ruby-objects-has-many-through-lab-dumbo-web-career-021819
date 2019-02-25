class Patient

  @@all = []

  def initialize(name)
    @name = name
    @@all.push(self)
  end

  def new_appointment(doctor, date)
    new_p_appointment = Appointment.new(date, self, doctor)
    new_p_appointment
  end

  def appointments
    Appointment.all.select {|appointment|
      appointment.patient == self
    }
  end

  def doctors
    appointments.map {|appointment|
      appointment.doctor
    }
  end

  def self.all
    @@all
  end

end
