class Doctor

  attr_accessor :appointments
  attr_reader :name

  def initialize(name)
    @name = name
    @appointments = []
    # @patients = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
  end

  # def appointments
  #   @appointments
  # end

  def patients
    self.appointments.collect { |appoint| appoint.patient }
  end

  # def self.all
  #   @@all
  # end

end
