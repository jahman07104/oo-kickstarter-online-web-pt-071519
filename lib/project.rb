
class Project
  
attr_accessor :backers,:title

 def initizlize(title)
   @backers=[]
   @title=title
   end

   def add_backer(backer)
    @backers << backer
    backer.back_project(self) unless backer.backed_projects.include?(self)
   end
end   