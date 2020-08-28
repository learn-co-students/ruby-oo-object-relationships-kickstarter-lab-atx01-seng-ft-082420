require 'pry'
class ProjectBacker
    attr_accessor :project, :backer, :title

    @@all = []
    def initialize(project, backer)
        @project = project
        @backer = backer

        self.class.all << self
    end

    def self.all
        @@all
    end
end

# binding.pry
0