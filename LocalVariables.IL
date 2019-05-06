.assembly extern mscorlib {}
.assembly ILDemos {}

.class ILDemos.Program extends [mscorlib]System.Object
{
  .method static void Main(string[] args) cil managed
  {
    .entrypoint

    // Create a local of type float32 with the name Total
    // The "init" is a modifier that indicates that the variables have to be initialised before use.
    // TODO: Can we do it without init?
    .locals init(float32 Total)

    // Push a float to the stack
    ldc.r4 3.1

    // STore to LOCal
    // Stores top item of the stack in the local we defined
    stloc Total
    
    // LoaD from LOCal
    // Reads the local and puts it back on top of the stack
    ldloc Total
    call void [mscorlib]System.Console::WriteLine(float32) // --> 3,1

    // It doesn't get cleared from the local variable. We can load it again. 
    ldloc Total
    call void [mscorlib]System.Console::WriteLine(float32) // --> 3,1

    // Let's do some addition for proof of concept
    ldloc Total
    ldc.r4 59.9
    add
    call void [mscorlib]System.Console::WriteLine(float32) // --> 63

    // We did not store it in the variable. The variable is still 3.1.
    ldloc Total
    call void [mscorlib]System.Console::WriteLine(float32) // --> 3,1

    // It is more common to work with local variables just in terms of the index number.
    // The index number gets automagickly assigned if it's not speciefied
    .locals init([1] int32 Total2)

    ldc.i4 100

    // stloc.1 = stloc 1 = stloc Total2
    stloc.1
    ldloc Total2
    call void [mscorlib]System.Console::WriteLine(int32) // --> 100

    ret
  }
}