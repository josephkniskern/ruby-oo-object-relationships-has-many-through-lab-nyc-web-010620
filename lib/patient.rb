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
    Appointment.new(doctor, date, self)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.date == self
    end
  end

  def doctors
    appointments.map { |appt| appt.patient }
  end

end
