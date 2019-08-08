class PatientsController < ApplicationController

    def index
        @patients = Patient.all
    end
    
    def show
        @patient = Patient.find_by(id: params[:id])
        @age = @patient.age.to_i
    end

end
