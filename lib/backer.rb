require 'pry'

class Backer
    attr_reader :name, :project
    @@all = []
    def initialize(name)
        @name=name
        @@all << self
    end

    def self.all
        @@all
    end

    def back_project(project)
        #binding.pry
        ProjectBacker.new(project,self)
    end

    def backed_projects
        backers =ProjectBacker.all.select do |project| 
            # binding.pry
            project.backer.name == self.name 
        end
        backers.collect do |projects|
            projects.project
        end 
    end


end