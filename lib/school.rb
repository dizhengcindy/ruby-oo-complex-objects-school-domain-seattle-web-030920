# code here!
class School
  attr_accessor :name,:roster
def initialize(name)  
  @name = name
  @roster = {}
end
  
  def add_student(name,num)
    roster[num] ||=[]
    roster[num] << name
  end
  
  def grade(num)
    roster[num]
    
  end
  def sort 
   # newHash ={}
    #roster.each{|k,v| newHash[k]=v.sort}
    #newHash
    
    roster.reduce({}){|memo,(k,v)|
      memo[k]=v.sort
      memo
    }
  end
  
  
  
  
  
end