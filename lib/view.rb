class View
    attr_accessor :author , :content , :controller
     
  
      def create_gossip
        puts "Quel est ton nom petite fouine?"
        @author = gets.chomp
        puts "Quel est ton Gossip?"
        @content = gets.chomp
        return params = { @author => @content}
      end
  
      def index_gossips
        @controller = Controller.new
        puts @controller.index_gossips
      end  
  end