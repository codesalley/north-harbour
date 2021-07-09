module ApplicationHelper
    def avatar_url_for(user, opts = {})
        size = opts[:size || 20]
    
        if user.avatar.attached?
          user.avatar.variant(
            resize: "#{size}x#{size}!"
          )
        else
          
          "https://res.cloudinary.com/north-harbour-gh/image/upload/v1625838211/content/AvatarMaker_1_mti9vl.png"

        end
     end
end
