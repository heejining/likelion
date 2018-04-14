class Product < ApplicationRecord
    resourcify
    belongs_to :user
    # belongs_to :category
    mount_uploader :images, ImageUploader
    mount_uploader :video, ImageUploader
    has_many :likes
end


