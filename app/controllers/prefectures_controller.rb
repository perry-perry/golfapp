class PrefecturesController < ApplicationController
	
before_action :set_prefecture, only:[:show,:edit,:update,:destroy]

def index
	@prefectures = Prefecture.all
end

def show 
end

def new
	@prefecture = Prefecture.new
end

def create
	@prefecture = Prefecture.new(prefecture_params)
	@prefecture.save
	redirect_to prefectures_path
end

def edit
end

def update
	@prefecture.update(prefecture_params)
	redirect_to prefectures_path
end

def destroy
	@prefecture.destroy
	redirect_to prefectures_path
end





private

 def prefecture_params
 	params[:prefecture].permit(:name)
 end

def set_prefecture
	@prefecture = Prefecture.find(params[:id])
end


end
