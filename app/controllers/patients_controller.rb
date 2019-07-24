class PatientsController < ApplicationController

        before_action :patient, only: [:show, :update, :edit]
    
        def index
            @patients = Patient.all
        end
    
        def new
            @patient = Patient.new
        end
    
        def create
            @patient = Patient.create(patient_params)
            redirect_to patient_path(@patient)
        end
    
        def show
            @appointments = Appointment.where(patient: @patient)
        end
    
        def update
            @patient = Patient.update(patient_params)
            redirect_to patient_path(@patient)
        end
    
        def edit
        end
    
        private
    
        def patient 
            @patient = Patient.find(params[:id])
        end
    
        def patient_params
            params.require(:patient).permit(:name, :age)
        end
    
end
