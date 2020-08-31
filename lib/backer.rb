require 'pry'
class Backer
    attr_accessor :name 

    
    def initialize(name)
        @name = name 
        
    end 

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
       back_proj = ProjectBacker.all.select do |name|
            name.backer == self 
        end 
        back_proj.collect do |proj|
            proj.project
        end 
        #binding.pry
    end

   
    
end