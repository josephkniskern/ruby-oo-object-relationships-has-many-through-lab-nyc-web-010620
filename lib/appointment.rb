class Appointment

  attr_accessor :date, :patient, :doctor
  attr_reader :patient
  @@all = []

  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end

  def self.all
    @@all
  end

end
