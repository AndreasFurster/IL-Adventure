// Based on: https://www.i-programmer.info/programming/other-languages/933-getting-started-with-il.html

// Inform assembler we are going to use stuff from mscorlib (System.Object, System.Console)
.assembly extern mscorlib {}

// Define own assembly name
.assembly ILDemos {}

// Declare a class. It extends System.Object as it should in .NET. 
// Extending System.Object is optional in IL. The following is also valid:
// .class ILDemos.Program
.class ILDemos.Program extends [mscorlib]System.Object
{
  // Just a static method with the name Main. The name Main is not a requirement, just convention.

  // The keywords cil and managed define so-called implementation flags of 
  // the MethodDef and indicate that the method body is represented in IL. 
  // A method represented in native code rather than in IL would carry the 
  // implementation flags native unmanaged
  .method static void Main(string[] args) cil managed
  {
    // .entrypoint specifies the starting point of the application. There can only be one entrypoint in the program. 
    .entrypoint

    // The LoadString instruction loads the string "Hello World" onto the stack
    ldstr "Hello World"

    // The method picks up its parameters from the stack and what looks like 
    // a parameter definition, i.e. (string), is a type definition that says 
    // that the top of stack item is to be a string. The void return type 
    // means that the method doesn’t leave a return value on the stack. 
    call void [mscorlib]System.Console::WriteLine(string)

    // return from the method
    ret
  }
}