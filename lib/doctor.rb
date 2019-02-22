require 'pry'
require_relative 'appointment'
require_relative 'patient'

class Doctor

attr_reader :name
@@all =[]

def initialize(name)
  @name = name
  @@all << self
end

def new_appointment(patient, date)
  Appointment.new(date, patient, self)
end

def appointments
  Appointment.all.select do |each_app|
    each_app.doctor == self
  end
end

def patients
  appointments.map do |each_app|
    each_app.patient
end
end

def self.all
  @@all
end


end
