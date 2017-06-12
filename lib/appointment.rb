class Appointment

  attr_accessor :date, :patient
  attr_reader :doctor

  @@all = []

  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    doctor.add_appointment(self)
    @@all << self
  end

  # def patient
  #   @patient
  # end

  def doctor=(doctor)
    @doctor = doctor
  end

  def self.all
    @@all
  end

end
