class Gossip
    attr_reader :author , :content , :data
  
    def initialize(author, content)
      @content = content
      @author = author
    end
  
    
  
    def save
      @data = {@author => @content}
      CSV.open("db/gossip.csv","wb") do |csv|
        @data.each do |data|
          csv << data
        end
      end
    end
  
  
  end