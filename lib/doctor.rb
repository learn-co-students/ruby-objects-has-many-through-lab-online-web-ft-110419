class Doctor

  @@all = []

  attr_reader :name, :appointments, :patient

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

  def new_appointment(patient, date)
    Appointment.new(date, patient, self) 
  end
  
  def patients
    patients = []
    self.appointments.each do |appointment| 
      if !patients.include? appointment.patient
        patients << appointment.patient
      end
    end
    patients
  end
end
