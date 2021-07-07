require 'pry'

class Patient
  attr_accessor :name, :appointment, :doctor
  @@all = []
  def initialize (name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def appointments
    #binding.pry
    Appointment.all.select {|app| app.patient == self}
  end
  def doctors
    appointments.collect {|app| app.doctor}
  end
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end
end