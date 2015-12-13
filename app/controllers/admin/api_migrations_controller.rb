class Admin::ApiMigrationsController < ApplicationController
  before_filter :authenticate_employee!
  
  layout 'admin'

  before_action :set_api_migration, only: [:show, :edit, :update, :destroy, :migrate_csv_to]

  def new
    @api_migration = ApiMigration.new
  end

  def create
    @api_migration = ApiMigration.new(api_migration_params)

    @api_migration.migration_ref = ApiMigration.generate_api_ref

    respond_to do |format|
      if @api_migration.save
        format.html { redirect_to [:admin, @api_migration], notice: '本次导入已经计入后台API流程。' }
        format.json { render :show, status: :created, location: @api_migration }
      else
        flash[:alert] = "无法创建本批次导入。请联系系统管理员。"
        format.html { render :new }
        format.json { render json: @api_migration.errors, status: :unprocessable_entity }
      end
    end
  end

  def show

  end

  def index
    @api_migrations = ApiMigration.all
  end

  def select_csv_of

  end

  def migrate_csv_to
    ApiMigration.import(params[:file], @api_migration)
    redirect_to admin_profiles_url, notice: "Profile imported successful."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_migration
      @api_migration = ApiMigration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_migration_params
      params.require(:api_migration).permit(:api_owner, :delivered_at,
                                            :number_of_transaction,
                                            :number_of_completion,
                                            :migration_ref,
                                            :log_file_name, :log_file_url)
    end
end
