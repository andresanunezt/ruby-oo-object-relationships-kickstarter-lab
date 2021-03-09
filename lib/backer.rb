class Backer
attr_reader :name

def initialize(name)
@name = name
end

def back_project(project)
ProjectBacker.new(project,self)
end

def backed_projects

project_backers = ProjectBacker.all.select do |project_backers|
    project_backers.backer == self
end
project_backers.map {|backers|backers.project}

end

end