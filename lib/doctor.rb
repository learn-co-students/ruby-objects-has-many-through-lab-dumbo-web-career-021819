class Doctor
  attr_reader :name
  attr_accessor :appointments, :patients

  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @patients = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    a = Appointment.new(date, patient, self)
    patients << patient
    @appointments << a
    a
  end

  def patients
    @patients
  end


end