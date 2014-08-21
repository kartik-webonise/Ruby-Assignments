class PurchaseHistory < ActiveRecord::Base
  belongs_to :product
  belongs_to :person
end
