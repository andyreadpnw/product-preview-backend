class ProductLogsController < ApplicationController
    def index
        render :json => ProductLog.all
    end 

    def show
        render :json => ProductLog.find(params[:id])
    end

    def create
        product_log = ProductLog.new(product_log_params)
        if product_log.save
            render json: product_log
        else
            render json: { error: 'product log exists, no save!' }
        end
    end 

    def update
        product_log = ProductLog.find(params[:id])

        puts product_log_params
        product_log.update(product_log_params)
        # byebug
        render :json => product_log
    end

    def destroy
        @productlog = ProductLog.find(params[:id])
        @productlog.destroy
    end

private

    def product_log_params
        params.require(:product_log).permit(:parent_id, :style_id, :department, :product_id, :status, :priority, :issue_type, :issue_class, :site, :division, :log_body, :assigned, :cc, :date_due, :environment)
    end
end
