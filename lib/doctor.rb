class Doctor 
  attr_reader :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all 
    @@all 
  end
  
  def appointments 
    Appointment.all.select {|appointment| appointment.doctor == self}
  end
  
  def new_appointment(name, genre)
    Appointment.new(name,self,patient)
  end
  
  def patients
    self.appointments.map {|appointment| appointment.patients } 
  end
end