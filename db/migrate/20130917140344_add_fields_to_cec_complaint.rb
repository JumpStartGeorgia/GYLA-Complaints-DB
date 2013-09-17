class AddFieldsToCecComplaint < ActiveRecord::Migration
  def change
    add_column :cec_complaints, :cec_observer, :string
    add_column :cec_complaints, :cec_observer_address, :string
    add_column :cec_complaints, :cec_observer_phone, :string
    add_column :cec_complaints, :cec_violation_type, :string
    add_column :cec_complaints, :cec_violated_at, :datetime
    add_column :cec_complaints, :cec_violation_desc, :text
    add_column :cec_complaints, :cec_witness_info, :text
    add_column :cec_complaints, :cec_violator_info, :text
    add_column :cec_complaints, :cec_additional_info, :text
    add_column :cec_complaints, :cec_author, :string
    add_column :cec_complaints, :cec_author_phone, :string
    add_column :cec_complaints, :cec_written_at, :datetime
    add_column :cec_complaints, :cec_request, :string
    add_column :cec_complaints, :cec_answered_at, :datetime
    add_column :cec_complaints, :cec_result, :string
    add_column :cec_complaints, :cec_appeal, :boolean
    add_column :cec_complaints, :cec_desicion_basis, :text
  end
end
