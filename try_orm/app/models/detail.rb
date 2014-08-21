class Detail < ActiveRecord::Base
  #attr_accessible :name, :detailable_type, :detailable_id

  belongs_to :detailable, :polymorphic=>true
end
