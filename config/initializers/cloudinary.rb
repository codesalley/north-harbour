if Rails.env.development?
    Cloudinary.config do |config|
        config.cloud_name = Rails.application.credentials[:cloudinary][:api_name]
        config.api_key = Rails.application.credentials[:cloudinary][:api_key]
        config.api_secret = Rails.application.credentials[:cloudinary][:api_secret]
        config.secure = true
        config.cdn_subdomain = true
      end
    else
    Cloudinary.config do |config|
        config.cloud_name = ENV['api_name']
        config.api_key = ENV['api_key']
        config.api_secret = ['api_secret']
        config.secure = true
        config.cdn_subdomain = true
      end  
end
