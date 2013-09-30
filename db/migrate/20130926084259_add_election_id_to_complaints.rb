class AddElectionIdToComplaints < ActiveRecord::Migration
  def change
    add_column :pec_complaints, :election_id, :integer
    add_column :dec_complaints, :election_id, :integer
    add_column :cec_complaints, :election_id, :integer
  end
end

