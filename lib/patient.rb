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
  Appointment.all.select {|each_apt| each_apt.patient == self}
end

def doctors
  appointments.map {|each_apt| each_apt.doctor}
end

def self.all
  @@all
end

end
