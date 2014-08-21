class Product < ActiveRecord::Base
  has_one :detail, :as => :detailable
  has_many :purchase_histories
  has_many :people, :through =>:purchase_histories
end
