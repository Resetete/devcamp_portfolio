module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user

    def connect
      self.current_user = find_verified_user || guest_user
      logger.add_tags 'ActionCable', current_user.email # this logs the user info to the terminal
      logger.add_tags 'ActionCable', current_user.id
    end

    def guest_user
      guest = GuestUser.new
      guest.id = guest.object_id
      guest.name = "Guest User"
      guest.first_name = "Guest"
      guest.last_name = "User"
      guest.email = 'guest_user@example.com'
      guest
    end

    protected

    def find_verified_user
      if verified_user = env['warden'].user # env['warden '] comes from devise
        verified_user
      end
    end
  end
end
