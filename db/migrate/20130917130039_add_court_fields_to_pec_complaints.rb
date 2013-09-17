class AddCourtFieldsToPecComplaints < ActiveRecord::Migration
  def change
    add_column :pec_complaints, :court_author, :string
    add_column :pec_complaints, :court_author_phone, :string
    add_column :pec_complaints, :court_name, :string
    add_column :pec_complaints, :court_written_at, :datetime
    add_column :pec_complaints, :court_request, :string
    add_column :pec_complaints, :court_answered_at, :datetime
    add_column :pec_complaints, :court_result, :string
    add_column :pec_complaints, :court_appeal, :boolean
    add_column :pec_complaints, :court_desicion_basis, :text
    add_column :pec_complaints, :court_additional_info, :text
  end
end
