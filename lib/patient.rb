class Patient
  
  @@all = []
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
    
    @@all << self
  end
  
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end
  
end 