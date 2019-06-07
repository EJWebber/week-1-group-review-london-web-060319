class Photo
    attr_accessor :name, :user
    @@all = []
    def initialize(name, user)
        @name = name
        @user = user
        @@all << self
    end

    def self.all
        @@all
    end

    def users_who_commented
        comments.each{|comment|comment.user}
    end

    def comments
        Comment.all.select{|comment| comment.photo == self}
    end

end
