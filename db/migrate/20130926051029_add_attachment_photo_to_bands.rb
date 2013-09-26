class AddAttachmentPhotoToBands < ActiveRecord::Migration
  def self.up
    change_table :bands do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :bands, :photo
  end
end
