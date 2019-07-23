class DoctorsController < ApplicationController

    def index
        @doctors = Doctor.all
    end

    def show
        find_doctor
        @appointments = @doctor.appointments
    end

    private

    def find_doctor
        @doctor = Doctor.find(params[:id])
    end

end
