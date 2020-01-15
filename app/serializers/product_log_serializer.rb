class ProductLogSerializer < ActiveModel::Serializer
  attributes :status, :priority, :issue_type, :issue_class, :site, :division, :environment, :log_body, :assigned, :cc, :date_due
  has_one :product
end
