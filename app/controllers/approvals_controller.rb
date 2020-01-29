class ApprovalsController < ApplicationController
    def index
        render :json => Approval.all
    end 

    def show
        render :json => Approval.find(params[:id])
    end

    def create
        approval = Approval.new(approval_params)
        if approval.save
            render json: approval
        else
            render json: { error: 'approval exists, no save!' }
        end
    end 

    def update
        approval = Approval.find(params[:id])

        puts approval_params
        approval.update(approval_params)
        # byebug
        render :json => approval
    end

    def destroy
        @approval = Approval.find(params[:id])
        @approval.destroy
    end

private

    def approval_params
        params.require(:approval).permit(:ecomm_approve, :ecomm_approver, :ecomm_comment, :plm_approve, :plm_approver, :plm_comment, :merchant_approve, :merchant_approver, :merchant_comment, :planner_approve, :planner_approver, :planner_comment, :other_approve, :other_approver, :other_comment, :product_id)
    end
end
