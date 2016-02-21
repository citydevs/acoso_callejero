class Complaint < ActiveRecord::Base
  belongs_to :user
  belongs_to :place
  belongs_to :condition
  belongs_to :complaint_type
  belongs_to :bullying_type
  belongs_to :aggressor
end
