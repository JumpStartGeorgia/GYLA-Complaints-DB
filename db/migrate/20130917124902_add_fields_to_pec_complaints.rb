class AddFieldsToPecComplaints < ActiveRecord::Migration
  def change
    add_column :pec_complaints, :pec_observer, :string
    add_column :pec_complaints, :pec_observer_address, :string
    add_column :pec_complaints, :pec_observer_phone, :string
    add_column :pec_complaints, :pec_district_name, :string
    add_column :pec_complaints, :pec_precinct_number, :string
    add_column :pec_complaints, :pec_violation_period, :string
    add_column :pec_complaints, :pec_violation_type, :string
    add_column :pec_complaints, :pec_violated_at, :datetime
    add_column :pec_complaints, :pec_violation_desc, :text
    add_column :pec_complaints, :pec_witness_info, :text
    add_column :pec_complaints, :pec_violator_info, :text
    add_column :pec_complaints, :pec_additional_info, :text
    add_column :pec_complaints, :pec_author, :string
    add_column :pec_complaints, :pec_author_phone, :string
    add_column :pec_complaints, :pec_written_at, :datetime
    add_column :pec_complaints, :pec_request, :string
    add_column :pec_complaints, :pec_answered_at, :datetime
    add_column :pec_complaints, :pec_result, :string
    add_column :pec_complaints, :pec_appeal, :boolean
    add_column :pec_complaints, :pec_decision_basis, :text
  end
end
