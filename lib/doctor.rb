class Doctor

  attr_accessor :appointments, :prescriptions
  attr_reader :name

  def initialize(name) #prescriptions as argument
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
