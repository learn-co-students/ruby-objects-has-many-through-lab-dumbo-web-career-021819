class Appointment
  attr_reader :date, :patient, :doctor

  @@all = []

  def self.all
    @@all
  end

  def initialize(date_string, patient, doctor)
    @date = date_string
    @patient = patient
    @doctor = doctor
    @@all.push(self)
  end

end
