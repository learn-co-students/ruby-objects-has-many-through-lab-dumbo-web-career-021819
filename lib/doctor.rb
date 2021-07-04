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
    Appointment.all
  end

  def patients
    Appointment.all.collect do |appointment|
      appointment.patient
    end
  end

  def self.all
    @@all
  end
end
