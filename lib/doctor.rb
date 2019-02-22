class Doctor
  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(doctor_name)
    @name = doctor_name
    @@all.push(self)
  end

  def new_appointment(patient_instance, date)
    new_appt = Appointment.new(date, patient_instance, self)
  end

  def appointments
    Appointment.all.select {|appt| appt.doctor == self}
  end

  def patients
    appointments.collect {|appt| appt.patient}
  end
end
