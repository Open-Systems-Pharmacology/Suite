# Visual Studio Settings
* Identation of 3
* Use spaces instead of tabs
* If using Resharper, a Resharper settings file is available to format your code

# Naming Convention
Use meaningful and understandable names. Code should read as a story and only some well known abbreviations such as DTO, PK etc. should be used

## Classes and Methods
* Use **Pascal Casing** for class name  `public class  SomeClass`
* Use **Pascal Casing** for public and protected method name  `public void SomeMethod()`
* Use **Camel Casing** for private method name  ` private int somePrivateMethod()`
* Prefix interface with I  `public interface IMyInterface`.
* Suffix exception classes with Exception `public class SBSuiteException: Exception`

## Variables
* Prefix private/protected member variable with _ (underscore). `private int _parentContainerId`
* Use **ALL_CAPS Casing** for constant variables `public const double DEFAULT_PERCENTILE = 0.5;`
* Use “Camel Casing” for local variable names and method arguments (int ingredientNode...). 
* All members variable should be declared at one place of a class definition.
* Prefer variables initialization at the point of declaration.  
* Do not use public members. Use properties instead
* Do not use Hungarian notation (e.g. b for boolean, s for strings etc...)        
* Except for program constants, never use global variables

## Comments
* Do not comment the obvious
* Indent comment at the same level of indentation as the code you are documenting
* All comments must be written in English
* Do not generate commments automatically
* Do comment algorithm specifics. For example why would you start a loop at index 1 and not at 0 etc...
* If a lot of comments are required to make a method easier to understand, break down the method in smaller methods
* Really, do not comment the obvious

# Coding Style
* No hard coded strings and magic number should be used. Declare a constant instead 
* Method with return values should not have side effects unless absolutely required
* Exit early instead of having nested if statements

  instead of
  ```
  public void UpdateValue(bool isVisible, bool isEditable, double value)
  {
    if(isVisible)
    {
      if(isEditable)
      {
        _value = value;
      }
    }
  }
  ```  
  use
  ```
  public void UpdateValue(bool isVisible, bool isEditable, double value)
  {
    if(!isVisible || !isEditable)
      return;

    _value = value;
  }
  ```
* Do not write **if** statements in one line
* Do not write **for** and **forEach** statements in one line
* Always use block `{}` for **for** and **forEach** statements
* Always have a default case for switch statement, potentially throwing an exception if the default is unreachable
  



                                                    

