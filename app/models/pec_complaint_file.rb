class PecComplaintFile < ActiveRecord::Base
  belongs_to :pec_complaint
  attr_accessible :pec_complaint_id, :file, :field_type
  has_attached_file :file



end
