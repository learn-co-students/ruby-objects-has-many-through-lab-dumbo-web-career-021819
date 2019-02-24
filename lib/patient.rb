require "pry"


class Patient
  @@all  = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor,date) #the appointment should know it belongs to
    # the patient
    Appointment.new(date, self, doctor)
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

  def doctors
    patient_docs = appointments.map do |appointment|
      appointment.doctor
    end
    return patient_docs
  end


end
