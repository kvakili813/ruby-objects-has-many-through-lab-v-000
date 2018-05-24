class Patient

  @@all = []

attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def doctors
    Appointment.all.collect {|appointments| appointments.patient == self}
  end

  def new_appointment(doctor, date)
    Appointment.new
  end

  def appointments

end
