class CreateCecComplaintFiles < ActiveRecord::Migration
  def change
    create_table :cec_complaint_files do |t|

      t.timestamps
    end
  end
end
