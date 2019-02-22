require 'pry'
require_relative 'appointment'
require_relative 'doctor'

class Patient

attr_reader :name
@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def new_appointment(doctor, date)
  Appointment.new(date, self, doctor)
end

def appointments
  Appointment.all.select do |each_app|
    each_app.patient == self
end
end

def doctors
  appointments.map do |each_app|
    each_app.doctor
end
end

def self.all
  @@all
end

end
