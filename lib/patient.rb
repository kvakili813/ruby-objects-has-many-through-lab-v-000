class Patient

  @@all = []

attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def doctors
    Appointment.all.select {|appointments| appointments.patient == self}
  end

  def new_appointment(doctor, date)
    Appointment.new
  end

end
