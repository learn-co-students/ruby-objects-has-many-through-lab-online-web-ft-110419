class Patient
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

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select { |x| x.patient == self}
  end

  def doctors
    appointments.collect { |d| d.doctor }
  end


end
