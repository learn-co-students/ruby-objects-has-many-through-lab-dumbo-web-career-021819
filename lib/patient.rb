class Patient
  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(patient_name)
    @name = patient_name
    @@all << self
  end

  def new_appointment(doctor, date)
    new_appt = Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select {|appt| appt.patient == self}
  end

  def doctors
    appointments.map {|appt| appt.doctor}
  end
  
end
