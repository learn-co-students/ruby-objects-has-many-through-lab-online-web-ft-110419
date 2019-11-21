class Patient
  attr_accessor :name
  @@all = []
  def initialize(name)
    self.name = name
    @@all << self
  end
  def new_appointment(doc,day)
    return Appointment.new(day,self, doc)
  end
  def self.all
    return @@all
  end
  def appointments
    return Appointment.all.filter {|a| a.patient == self}
  end
  def doctors
    self.appointments.collect{|a|a.doctor}
  end
end
