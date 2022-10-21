class Controller
    attr_reader :my_gossip, :view
  
    def initialize
      @view = View.new
    end
  
    def create_gossip
      @params = @view.create_gossip
      @author = @params.keys.join(" ")
      @content = @params.values.join(" ")
      @my_gossip = Gossip.new(@author,@content)
      @my_gossip.save
    end
  
    def index_gossips
      arr = []
      arr = CSV.read("db/gossip.csv")
    end
  
    def afficher
      @view.index_gossips
    end     
end

  