ActiveAdmin.register User do
  actions :all, except: [:new]

  controller do
    def edit
      @user = User.find(params[:id])
    end

    def update
      @user = User.find(params[:id])
      @user.update(permitted_params[:user])
      redirect_to admin_user_path
    end
  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :email, :encrypted_password, :nickname, :gender, :situation, :children, :age_id, :job_id, :area_id,
                :think_id, :admin, :reset_password_token, :reset_password_sent_at, :remember_created_at
  #
  # or
  #
  # permit_params do
  #   permitted = [:email, :encrypted_password, :nickname, :gender, :situation, :children, :age_id, :job_id, :area_id, :think_id, :admin, :reset_password_token, :reset_password_sent_at, :remember_created_at]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
end
