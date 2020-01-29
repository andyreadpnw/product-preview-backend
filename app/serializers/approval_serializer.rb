class ApprovalSerializer < ActiveModel::Serializer
  attributes :id, :ecomm_approve, :ecomm_approver, :ecomm_comment, :plm_approve, :plm_approver, :plm_comment, :merchant_approve, :merchant_approver, :merchant_comment, :planner_approve, :planner_approver, :planner_comment, :other_approve, :other_approver, :other_comment
  has_one :product
end
