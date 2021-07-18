require "cloudinary"
require "shrine/storage/cloudinary"
require "shrine/storage/file_system"

Cloudinary.config do |config|
    config.cloud_name = ENV['cloudinary_name']
    config.api_key = ENV['cloudinary_key']
    config.api_secret = ENV['cloudinary_secret']
    config.secure = true
    config.cdn_subdomain = true
end 

Shrine.storages = {
  cache: Shrine::Storage::FileSystem.new("public", prefix: "cache"), # for direct uploads
  store: Shrine::Storage::Cloudinary.new(prefix: "harbour"),
  }

Shrine.plugin :activerecord           # loads Active Record integration
Shrine.plugin :cached_attachment_data # enables retaining cached file across form redisplays
Shrine.plugin :restore_cached_data    # extracts metadata for assigned cached files
Shrine.plugin :validation_helpers
Shrine.plugin :validation