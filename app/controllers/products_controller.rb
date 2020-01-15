class ProductsController < ApplicationController
    def index
        render :json => Product.all
    end 

    def show
        render :json => Product.find(params[:id])
    end

    def create
        product = Product.new(product_params)
        if product.save
            render json: product
        else
            render json: { error: 'product exists, no save!' }
        end
    end 

    def update
        product = Product.find(params[:id])

        puts product_params
        product.update(product_params)
        # byebug
        render :json => product
    end

    def destroy
        @product = Product.find(params[:id])
        @product.destroy
    end

private

    def product_params
        params.require(:product).permit(:parent_id, :name, :department, :style_id, :color_id, :product_copy, :product_main_image, :fit, :fabrication, :style_type)
    end

end