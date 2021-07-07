class Project
    attr_accessor :title
    def initialize(title)
        @title = title
    end

    def add_backer(name)
        ProjectBacker.new(self, name)
    end

    def backers
        # (ProjectBacker.all.select {|backed| backed.backer == self}).collect{|proj| proj.project}
        backed = ProjectBacker.all.select do |p|
            p.project == self
        end

        backed.collect do |b|
            b.backer
        end
    end
end