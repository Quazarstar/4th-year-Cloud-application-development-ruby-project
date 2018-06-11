class VisitsController < ApplicationController
	def create 
		@patient = Patient.find(params[:patient_id])
		@visit = @patient.visits.create(visit_params) 
		redirect_to patient_path(@patient)
	end

	 def destroy
		 @patient = Patient.find(params[:patient_id])
		 @visit = @patient.visit.find(params[:id])
		 @visit.destroy
		 redirect_to patient_path(@patient)
 	end 

	private 
	def visit_params
		params.require(:visit).permit(:date, :infection, :injury, :observations, :hospital_request, :condition)
	end


end
