class AddAppellateCourtFieldsToPecComplaints < ActiveRecord::Migration
  def change
    add_column :pec_complaints, :appellate_author, :string
    add_column :pec_complaints, :appellate_author_phone, :string
    add_column :pec_complaints, :appellate_name, :string
    add_column :pec_complaints, :appellate_written_at, :datetime
    add_column :pec_complaints, :appellate_request, :string
    add_column :pec_complaints, :appellate_answered_at, :datetime
    add_column :pec_complaints, :appellate_result, :string
    add_column :pec_complaints, :appellate_desicion_basis, :text
    add_column :pec_complaints, :appellate_additional_info, :text
  end
end
