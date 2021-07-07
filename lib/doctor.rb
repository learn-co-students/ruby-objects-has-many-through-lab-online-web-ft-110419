class Doctor 
    attr_accessor :name, :appointments, :patients
    @@all = []
    def initialize(name)
      @name = name 
      @appointments = appointments
      @patients = patients
      @@all << self
    end 
    
    def self.all 
      @@all 
    end
    
    def new_appointment(lvl, date)
      Appointment.new(date, lvl, self)
    end 
    
    def appointments 
      Appointment.all.select {|apponint| apponint.doctor == self}
    end 
    
    def patients 
      appointments.collect {|app| app.patient }
    end 
end  