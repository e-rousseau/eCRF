class CentresController < ApplicationController
  http_basic_authenticate_with name: "dhh",
                               password: "secret",
                               only: :destroy

   def index
     @study = Study.find(params[:study_id])
     @centre = @study.centres.all
   end

   def show
     @study = Study.find(params[:study_id])
     @centre = @study.centres.find(params[:id])
   end

   def new
     @study = Study.find(params[:study_id])
     @centre = @study.centres.new
   end

   def edit
     @study = Study.find(params[:study_id])
     @centre = @study.centres.find(params[:id])
   end

  def create
    @study = Study.find(params[:study_id])
    @centre = @study.centres.create(centre_params)

    if @centre.save
      redirect_to study_path(@study), success: 'Centre created'
    else
      flash[:error] = 'Error: ' + @centre.errors.full_messages.to_s
      redirect_to study_path(@study)
    end
  end

  def update
    @study = Study.find(params[:study_id])
    @centre = @study.centres.find(params[:id])

    if @centre.update(centre_params)
       #redirect_to [@study, @centre]
       redirect_to study_path(@study)
     else
       render 'edit'
     end
   end

  def destroy
    @study = Study.find(params[:study_id])
    @centre = @study.centres.find(params[:id])
    @centre.destroy
    redirect_to study_path(@study)
  end

  private
    def centre_params
      params.require(:centre).permit(:centre_code, :centre_name)
    end

end
