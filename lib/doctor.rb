class doctor
  
  
  @@all = []
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @@all << self 
  end
  
  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end 
  
  def appointments
    Appointment.all.select { |appointment| appointment.doctor == self }
  end 
  
  def patients
    Patients.all.select { |patient|  }
  end 
  
  def all
    @@all
  end
  
end