class Appointment

  attr_reader :date
  attr_accessor :doctor, :patient

  def initialize(date, doc, patient = nil)
    @date = date
    @doctor = doc
    #@patient = patient
    #doc.appointments << self
    doc.add_appointment(self)
  end



end
