class PecComplaint < ActiveRecord::Base
  belongs_to :election
  has_many :pec_complaint_files, :dependent => :destroy
  accepts_nested_attributes_for :pec_complaint_files, :reject_if => lambda { |t| t[:file].blank? }, :allow_destroy => true
#attr_accessible :pec_complaint_files_attributes, :pec_observer, :pec_observer_address, :pec_observer_phone, :pec_district_name, :pec_precinct_number, :pec_violation_period, :pec_violation_type, :pec_violated_at, :pec_violation_desc, :pec_witness_info, :pec_violator_info, :pec_additional_info, :pec_author, :pec_author_phone, :pec_written_at, :pec_request, :pec_answered_at, :pec_result, :pec_appeal, :pec_decision_basis, :dec_author, :dec_author_phone, :dec_written_at, :dec_request, :dec_answered_at, :dec_result, :dec_appeal, :dec_decision_basis, :dec_additional_info, :court_author, :court_author_phone, :court_name, :court_written_at, :court_request, :court_answered_at, :court_result, :court_appeal, :court_decision_basis, :court_additional_info, :appellate_author, :appellate_author_phone, :appellate_name, :appellate_written_at, :appellate_request, :appellate_answered_at, :appellate_result, :appellate_decision_basis, :appellate_additional_info, :election_id





  def files
    self.pec_complaint_files
  end

  def filter_files(field_type)
    self.files.where(:field_type => field_type)
  end

end
