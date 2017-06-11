class Appointment

  attr_accessor :date, :patient
  attr_reader :doctor

  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    doctor.appointments << self
  end

  def patient
    @patient
  end

  def doctor=(doctor)
    @doctor = doctor
  end

end
