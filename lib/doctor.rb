require "pry"
class Doctor 

    attr_accessor :name
    @@all = []


    def self.all 
        @@all
    end 


    def initialize(name)
        @name = name
        @@all << self 
    end 


    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end


    def appointments
        # binding.pry
       Appointment.all.select {|x| x.doctor == self}
    end


    def patients 
        appointments.collect {|x| x.patient}
    end 
end 
