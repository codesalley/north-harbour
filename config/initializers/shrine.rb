require "cloudinary"
require "shrine/storage/cloudinary"

Cloudinary.config(
  cloud_name: Rails.application.credentials[:cloudinary][:api_name],
  api_key:    Rails.application.credentials[:cloudinary][:api_key],
  api_secret: Rails.application.credentials[:cloudinary][:api_secret],
)

Shrine.storages = {
  cache: Shrine::Storage::Cloudinary.new(prefix: "cache"), # for direct uploads
  store: Shrine::Storage::Cloudinary.new(prefix: 'harbour'),
}

Shrine.plugin :activerecord           # loads Active Record integration
Shrine.plugin :cached_attachment_data # enables retaining cached file across form redisplays
Shrine.plugin :restore_cached_data    # extracts metadata for assigned cached files
Shrine.plugin :validation_helpers
Shrine.plugin :validation