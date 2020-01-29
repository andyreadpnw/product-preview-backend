class CreateApprovals < ActiveRecord::Migration[6.0]
  def change
    create_table :approvals do |t|
      t.string :ecomm_approve
      t.string :ecomm_approver
      t.string :ecomm_comment
      t.string :plm_approve
      t.string :plm_approver
      t.string :plm_comment
      t.string :merchant_approve
      t.string :merchant_approver
      t.string :merchant_comment
      t.string :planner_approve
      t.string :planner_approver
      t.string :planner_comment
      t.string :other_approve
      t.string :other_approver
      t.string :other_comment
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
