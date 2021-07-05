class Patient

  @@all = []

  attr_reader :name, :appointments

  def initialize(name)
    @name = name
    @@all << self
    @appointments = []
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end
  
  def self.all
    @@all
  end

  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end
  
  def doctors
    doctors = []
    self.appointments.each do |appointment|
      if !doctors.include? appointment.doctor
        doctors << appointment.doctor
      end
    end
      doctors
  end
  
end
