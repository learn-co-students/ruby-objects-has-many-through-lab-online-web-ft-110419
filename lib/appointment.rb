class Appointment
  attr_accessor :date
  attr_reader :doctor, :patient

  @@all = []

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    save
  end
 


end
