class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient

  def date_time
    time = self.appointment_datetime
    time.strftime("%B %d, %Y at %k:%M")
  end
end
