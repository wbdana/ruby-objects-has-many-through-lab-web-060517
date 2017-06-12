class Prescription

  @@MANUAL = {
    "chicken_pox" => ["pox-gone", "poxer"],
    "headache" => ["tylenol", "aspirin"],
    "stomach_ache" => ["pepto", "bismol"],
    "broken_leg" => ["morphine", "amputate"]
  }

  def initialize(appointment)
    @appointment = appointment
    @doctor = appointment.doctor
    @patient = appointment.patient
  end

  def prescribe
    potential_drugs = @@MANUAL[@patient.illness]
    non_allergic_drugs = potential_drugs.select { |drug| !@patient.allergies.include?(drug) }
    doc_possibilities = non_allergic_drugs.select { |drug| @doctor.prescriptions.include?(drug) }
    if doc_possiblities = []
      "Call your specialist!"
    else
      @prescribed_drug = doc_possibilities.first
    end
  end

end
