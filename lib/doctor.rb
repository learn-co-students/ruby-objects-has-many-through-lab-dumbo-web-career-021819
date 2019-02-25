class Doctor

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all.push(self)
  end

  def new_appointment(patient_instance, date)
    newAppointment = Appointment.new(date, patient_instance, self)
    newAppointment
  end

  def appointments
    Appointment.all.select {|appointment|
      appointment.doctor == self
    }
  end

  def patients
    Appointment.all.map {|appointment|
      appointment.patient
    }
  end

  def self.all
    @@all
  end

end
