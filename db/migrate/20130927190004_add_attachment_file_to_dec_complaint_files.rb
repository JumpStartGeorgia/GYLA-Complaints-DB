class AddAttachmentFileToDecComplaintFiles < ActiveRecord::Migration
  def self.up
    change_table :dec_complaint_files do |t|
      t.attachment :file
    end
  end

  def self.down
    drop_attached_file :dec_complaint_files, :file
  end
end
