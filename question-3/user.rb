class User
    attr_accessor :username
    @@all = []
    def initialize(username)
        @username = username
        @@all << self
    end

    def self.all
        @@all
    end

    def post_comment(message, photo)
        Comment.new(message, photo, self)
    end

    def post_photo(name)
        Photo.new(name, self)
    end

    def users_photos
        Photo.all.select{|photo| photo.user == self}
    end
    def users_comments
        Comment.all.select{|comment| comment.user == self}
    end


end
