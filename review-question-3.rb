# begin to build a simple program that models Instagram
# you should have a User class, a Photo class and a comment class

require 'pry'

class User
    attr_reader :name

    def initialize (name)
        @name = name
    end

    def photos 
        Photo.all.select {|photo| photo.user == self}
    end

end

class Photo
    attr_reader :photo, :comments
    attr_accessor :user

    @@all = []

    def initialize 
        @user = user
        @photo = photo
        @comments = []
        Photo.all << self
    end

    def self.all
        @@all
    end

    def make_comment(string)
        @comments << Comment.new(string)
    end

    def comments
        @comments
    end

end

class Comment
    attr_reader :comment
    @@all = []

    def initialize (comment)
        @comment = comment
        Comment.all << self
    end
    
    def self.all
        @@all
    end
end

# tests
sandwich_photo = Photo.new
sophie = User.new("Sophie")
sandwich_photo.user = sophie
sandwich_photo.user.name
# => "Sophie"
sophie.photos
# => [#<Photo:0x00007fae2880b370>]


sandwich_photo.comments
# => []

sandwich_photo.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
sandwich_photo.comments
# => [#<Comment:0x00007fae28043700>]

Comment.all
#=> [#<Comment:0x00007fae28043700>]

binding.pry
#binding.pry
