.assembly extern mscorlib {}
.assembly ILDemos {}

.class ILDemos.Program extends [mscorlib]System.Object
{
  .method static void Main(string[] args) cil managed
  {
    .entrypoint

    ldstr "Starting..."
    call void [mscorlib]System.Console::WriteLine(string)

    // Jump/BRanch to Next 
    // br.s can also be used if you are sure that the target is within 
    // the -128 to +127 byte of the br statement since it will use int8 
    // instead of int32 for branching offset. 
    // TODO: Learn about branching offset.
    br Next
    
    ldstr "I am not executed... :("
    call void [mscorlib]System.Console::WriteLine(string)

    // We continue from here. This looks a lot like goto statements. 
    Next:
    ldstr "Now we are here..."
    call void [mscorlib]System.Console::WriteLine(string)

    // This is going to create an infinite loop:
    // br Next

    ret
  }
}