class Doctor
  attr_accessor :name
  @@all = []
  def initialize(name)
    self.name = name
    @@all << self
  end
  def self.all
    return @@all
  end
  def appointments
    return Appointment.all.filter {|a| a.doctor == self }
  end
  def new_appointment(my_person,my_date)
    return Appointment.new(my_date,my_person,self)
  end
  def patients
    self.appointments.collect{|a| a.patient}
  end
end
