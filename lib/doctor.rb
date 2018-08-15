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
  
  
end 