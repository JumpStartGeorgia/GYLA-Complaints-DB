class AddFieldsToDecComplaint < ActiveRecord::Migration
  def change
    add_column :dec_complaints, :dec_observer, :string
    add_column :dec_complaints, :dec_observer_address, :string
    add_column :dec_complaints, :dec_observer_phone, :string
    add_column :dec_complaints, :dec_district_name, :string
    add_column :dec_complaints, :dec_violation_type, :string
    add_column :dec_complaints, :dec_violated_at, :datetime
    add_column :dec_complaints, :dec_violation_desc, :text
    add_column :dec_complaints, :dec_witness_info, :text
    add_column :dec_complaints, :dec_violator_info, :text
    add_column :dec_complaints, :dec_additional_info, :text
    add_column :dec_complaints, :dec_author, :string
    add_column :dec_complaints, :dec_author_phone, :string
    add_column :dec_complaints, :dec_written_at, :datetime
    add_column :dec_complaints, :dec_request, :string
    add_column :dec_complaints, :dec_answered_at, :datetime
    add_column :dec_complaints, :dec_result, :string
    add_column :dec_complaints, :dec_appeal, :boolean
    add_column :dec_complaints, :dec_desicion_basis, :text
  end
end
