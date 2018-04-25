class Backer
  attr_accessor :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(title)
    self.backed_projects << Project.retrieve_or_create_by_title(title)
  end

end
