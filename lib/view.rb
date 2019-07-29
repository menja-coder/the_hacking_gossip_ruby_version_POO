


class View
    attr_accessor :author, :content
    def create_gossip
        puts "Quel est votre nom"
        @author = gets.chomp
        puts "Ecrivez votre gossips:"
        @content = gets.chomp

        return params = {author: @author, content: @content}

        

    end
end