class Patient

  attr_accessor :name, :allergies, :illness
  attr_reader :appointments

  def initialize(name)
    @name = name
    @appointments = []
    @allergies = []
    # @doctors = []
  end

  # def add_allergy=(allergy)
    ## Needed if allergies are not passed in as array
  # end

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
