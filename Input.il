.assembly extern mscorlib {}
.assembly ILDemos {}

.class ILDemos.Program extends [mscorlib]System.Object
{
  .method static void Main(string[] args) cil managed
  {
    .entrypoint

    ldstr "You should not execute this program from powershell. Open the .exe directly instead."
    call void [mscorlib]System.Console::WriteLine(string)

    ldstr "Type some text and press enter..."
    call void [mscorlib]System.Console::WriteLine(string)

    // Simple readline
    call string [mscorlib]System.Console::ReadLine()
    
    // Add text on top of the stack
    ldstr "Your text was: "

    call void [mscorlib]System.Console::Write(string)
    call void [mscorlib]System.Console::WriteLine(string)

    // Read key to prevent console from exiting before the user can see the reseult
    call int32 [mscorlib]System.Console::Read()
    // Ignore the value recieved by the read function
    pop
    
    ret
  }
}