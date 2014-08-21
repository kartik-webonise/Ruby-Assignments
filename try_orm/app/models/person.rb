class Person < ActiveRecord::Base
  has_one :detail, :as => :detailable
  has_many :purchase_histories
  has_many :products, :through => :purchase_histories
end