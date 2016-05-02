class Avatar < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
end
