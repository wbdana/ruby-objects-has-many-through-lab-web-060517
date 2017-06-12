require 'pry'

require "lib/doctor.rb"
require "lib/appointment.rb"
require "lib/patient.rb"

doc = Doctor.new("Doc Woods")
appt = Appointment.new("Friday", doc)
binding.pry
