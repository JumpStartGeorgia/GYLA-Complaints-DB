class PecComplaint < ActiveRecord::Base
  belongs_to :election
  has_many :pec_complaint_files, :dependent => :destroy
  accepts_nested_attributes_for :pec_complaint_files, :reject_if => lambda { |t| t['pec_complaint_file'].blank? }
  attr_accessible :pec_complaint_files_attributes


  def files
    self.pec_complaint_files
  end

end
