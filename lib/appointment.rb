require 'pry'

class Appointment

  attr_accessor :doctor, :patient, :date

  @@all = []

  def initialize(patient, doctor, date)
    @doctor = doctor
    @patient = patient
    @date = date
    @@all << self
  end



  def self.all
    # binding.pry
    @@all
  end


end
