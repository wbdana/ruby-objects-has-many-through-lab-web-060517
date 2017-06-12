class Patient

  attr_accessor :name
  attr_reader :appointments

  def initialize(name)
    @name = name
    @appointments = []
    # @doctors = []
  end

  # def appointments
  #   @appointments
  # end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end

  def doctors
    @appointments.collect { |appointment| appointment.doctor }
  end

  # def doctors
  #   @appointments.each do |appointment|
  #     if !@doctors.include?(appointment.doctor)
  #       @doctors << appointment.doctor
  #     end
  #   end
  #   @doctors
  # end

end
