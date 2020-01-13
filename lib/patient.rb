require 'pry'

class Patient

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(self, date, doctor)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.date == self
      binding.pry
    end
  end

  def doctors
    appointments.map { |appt| appt.patient }
  end

end
