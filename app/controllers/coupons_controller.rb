class CouponsController < ApplicationController

	def show
		@coupon = Coupon.find(params[:id])
	end

	def create
		@coupon = Coupon.create({store: params[:store], coupon_code: params[:coupon_code]})
		redirect_to coupon_path(@coupon)
	end

	def new
	end

	def index
		@coupons = Coupon.all
	end

end