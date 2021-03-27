class Photo < ApplicationRecord
  belongs_to :user
  belongs_to :stage

  mount_uploader :photo, PhotoUploader

  def store_dir
    "#{stage.label}"
  end

  def new_filename(original_filename)
    "#{user.last_session_id}__#{Time.now.nsec}#{File.extname(original_filename)}"
  end
end
