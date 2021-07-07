require "pry"

class Doctor 
  attr_accessor :name 
  @@all_doctors = []
  def initialize(name)
    @name = name 
    @@all_doctors << self 
  end 
  
  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end
  
  def appointments 
    Appointment.all.find_all{|appt| appt.doctor == self}
  end
  
  def patients 
    appointments.map{|appt| appt.patient}
  end
  
  def self.all 
    @@all_doctors
  end 
end
  