class CentresController < ApplicationController
  http_basic_authenticate_with name: "dhh",
                               password: "secret",
                               only: :destroy

  def create
    @study = Study.find(params[:study_id])
    @centre = @study.centres.create(centre_params)
    redirect_to study_path(@study)
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
