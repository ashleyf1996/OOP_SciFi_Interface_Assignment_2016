class TargetData
{
  String name;
  int age;
  String objective;

 
    //Parameterised Constructor
    TargetData(String name, Integer age, String objective)
    {
    this.name = name;
    this.age = age;
    this.objective = objective;

    }
  
  //To string method
  String toString()
    {
    return name + "\t" + age + "t" +objective + "\t" ;
    }
    
}