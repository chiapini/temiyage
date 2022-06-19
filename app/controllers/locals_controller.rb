class LocalsController < ApplicationController
  before_action :find_local, only: %i[show destroy edit update]

  def index
    if params[:sort] == 'hokkaido'
        @locals = Local.where(prefecture_id: "2")
    elsif params[:sort] == 'tohoku'
        @locals = Local.where(prefecture_id: "3")  
    elsif params[:sort] == 'kanto'
        @locals = Local.where(prefecture_id: "4")
      elsif params[:sort] == 'hokuriku'
        @locals = Local.where(prefecture_id: "5")
      elsif params[:sort] == 'toukai'
        @locals = Local.where(prefecture_id: "6")
      elsif params[:sort] == 'kinki'
        @locals = Local.where(prefecture_id: "7")
      elsif params[:sort] == 'tiyubu'
        @locals = Local.where(prefecture_id: "8")
      elsif params[:sort] == 'sikoku'
        @locals = Local.where(prefecture_id: "9")   
      elsif params[:sort] == 'kyusyu'
        @locals = Local.where(prefecture_id: "10")   
      else params[:sort] == 'okinawa'
        @locals = Local.where(prefecture_id: "11")    
  end
end

   def new
     @local = Local.new
   end

   def create
     @local = Local.new(local_params)
     if @local.save
       redirect_to localtops_path
     else
       render :new
     end
   end

  def show
   end

   def edit; end

   def destroy
     @local.destroy
     redirect_to locals_path
   end

  def update
     if @local.update(local_params)
       redirect_to local_path
     else
       render :edit
     end
   end

private

  def local_params
    params.require(:local).permit(:image, :shop_name, :information, :area_id, :category_id, :prefecture_id).merge(user_id: current_user.id)
  end

  def find_local
    @local = Local.find(params[:id])
  end

 end
