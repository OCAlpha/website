module OfficesHelper
  def master_budget
    sum_budget = 0
    Office.all.each do |office|
      sum_budget += office.budget
    end
    return sum_budget
  end
  
  def master_remaining
    sum_remaining = 0
    Office.all.each do |office| 
      sum_remaining += office.budget_remaining unless office.title == "Treasurer" #Ignore dues income
    end
    return sum_remaining
  end
end
