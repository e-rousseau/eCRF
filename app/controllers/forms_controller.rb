class FormsController < ApplicationController
  def create
   @study = Study.find(params[:study_id])
   @form = @study.forms.create(form_params)

   if @form.save
     redirect_to study_path(@study), success: 'Centre created'
   else
     flash[:error] = 'Error: ' + @form.errors.full_messages.to_s
     redirect_to study_path(@study)
   end
 end

 def destroy
   @study = Study.find(params[:study_id])
   @form = @study.forms.find(params[:id])
   @form.destroy
   redirect_to study_path(@study)
 end

 private
   def form_params
     params.require(:form).permit(:form_code, :form_name)
   end
end
