class employee:
    def __init__(self,name,salary):
        self.name = name
        self.salary = salary

    def pay(self):
       return self.salary

    def __str__(self):
        return self.name + " - Rs" + str(self.pay())
    
class manager(employee):
    def __init__(self,name,salary,bonus):
        super().__init__(name,salary)
        self.bonus = bonus

    def pay(self):
        return super().pay() + self.bonus
         
class Intern(employee):
    def __init__(self,name,hours):
        super().__init__(name,0)
        self.hours = hours
    def pay(self):
        return self.hours * 200 

class company:
  def __init__(self):
      self.people = []
  def add(self,person):
      self.people.append(person)

  def show_all(self):
      for person in self.people:
          print(person)

  def total_payroll(self):
      total = 0

      for person in self.people:
          total = total + person.pay()

      return total

company = company()
company.add(employee("Asha",3000))
company.add(manager("Rohit",5000,8000))
company.add(Intern("Kabir",80))
company.show_all()
print("total payroll: Rs",company.total_payroll())


                  


    
  


