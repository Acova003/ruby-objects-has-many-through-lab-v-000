require 'pry'
class Doctor 
  attr_accessor :name  
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
    #binding.pry
  end 
  
  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end 
  
  def appointments 
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end 
  end
  
  
end 