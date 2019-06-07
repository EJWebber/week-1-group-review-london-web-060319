class Comment
    attr_accessor :message, :photo, :user
    @@all = []
    def initialize(message, photo, user)
        @message = message
        @photo = photo
        @user = user
        @@all << self
    end

    def self.all
        @@all
    end
end