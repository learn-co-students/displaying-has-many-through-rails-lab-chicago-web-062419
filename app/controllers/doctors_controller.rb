class DoctorsController < ApplicationController
    before_action :doctor, only: [:show, :update, :edit]

    def index
        @doctors = Doctor.all
    end

    def new
        @doctor = Doctor.new
    end

    def create
        @doctor = Doctor.create(doctor_params)
        redirect_to doctor_path(@doctor)
    end

    def show
        @appointments = Appointment.where(doctor: @doctor)
    end

    def update
        @doctor = Doctor.update(doctor_params)
        redirect_to doctor_path(@doctor)
    end

    def edit
    end

    private

    def doctor 
        @doctor = Doctor.find(params[:id])
    end

    def doctor_params
        params.require(:doctor).permit(:name, :department)
    end

end
