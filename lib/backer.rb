class Backer
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def back_project(title)
    self.backed_projects << Project.retrieve_or_create_by_title(title)
  end
end