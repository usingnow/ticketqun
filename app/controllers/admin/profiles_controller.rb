class Admin::ProfilesController < ApplicationController
  layout 'admin'

  before_action :set_profile, only: [:show, :edit, :update, :destroy]

  def index
    @profiles = Profile.all
  end

  def show
    @import_log = @profile.import_log

  end

  def select_csv_of

  end

  def migrate_csv_to
    Profile.import(params[:file])
    redirect_to admin_profiles_url, notice: "Profile imported successful."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:profile_id, :first_name, :last_name, :gender, :mariage, :birthday, :email,
                                      :chinese_id_number, :chinese_passport_number,
                                      :occupation, :position, :employer,
                                      :country, :province, :city, :address, :zipcode, :cellphone)
    end
end