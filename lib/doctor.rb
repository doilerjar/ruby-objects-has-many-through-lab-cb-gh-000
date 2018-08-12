require 'pry'

class Doctor
  @@all = []
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @@all << self 
    
    self
  end
  
  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
    # binding.pry
  end 
  
  def appointments
    Appointment.all.select { |appointment| appointment.doctor == self }
  end 
  
  def patients
    appointments.collect { |appointment| appointment.patient }
    binding.pry
  end 
  
  def self.all
    @@all
  end
  
end