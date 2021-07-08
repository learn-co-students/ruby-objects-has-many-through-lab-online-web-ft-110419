require 'pry'

class Doctor
  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def initialize(name)
    @name = name
    save
  end

  def new_appointment(date, patient)
    Appointment.new(patient, date, self)
  end

  def appointments
    Appointment.all.select{ |a| a.doctor == self }
  end

  def patients
    appointments.collect {|p| p.patient}
  end

end
