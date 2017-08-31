class Patient

  attr_reader :name
  attr_accessor :appointments, :doctors

  def initialize(name)
    @name = name
    @appointments = []
    @doctors = []
  end

  def add_appointment(appointment)
    appointment.patient = self
    appointment.doctor.patients << self
    self.appointments << appointment
    self.doctors << appointment.doctor
  end



end
