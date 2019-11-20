class Appointment
  attr_reader :patient, :doctor, :date
  
  @@all = []
  
  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end
  
  def doctor=(doc_obj)
    @doctor = doc_obj
  end
  
  def patient=(pat_obj)
    @patient = pat_obj
  end
  
  def self.all
    @@all
  end
  
end