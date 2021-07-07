class Patient
  attr_reader :name
  attr_accessor :appointments, :doctors

  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @doctors = []
    @@all << self
  end

  def self.all
    @@all
  end

  def doctors
    @doctors
  end
  def new_appointment(doctor, date)
    a = doctor.new_appointment(self, date)
    @doctors << doctor
    @appointments << a
    a
  end
end