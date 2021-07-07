class Project 
    attr_accessor :title
   
    def initialize(title)
        @title = title 
    end 

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        backers = ProjectBacker.all.select do |proj|
             proj.project == self 
         end 
         backers.collect do |name|
             name.backer
         end 
         #binding.pry
     end

end 