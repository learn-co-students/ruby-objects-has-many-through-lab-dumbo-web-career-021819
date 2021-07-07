class Doctor

attr_reader :name
@@all = []

def initialize(name)
  @name =  name
  @@all << self
end

def new_appointment(patient, date)
  Appointment.new(date, patient, self)
end

def appointments
  Appointment.all.select {|each_apt| each_apt.doctor == self}
end

def patients
  appointments.map {|each_apt| each_apt.patient}
end

def self.all
  @@all
end

end
