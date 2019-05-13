.assembly extern mscorlib {}
.assembly ILDemos {}

.class ILDemos.Program extends [mscorlib]System.Object
{
  .method static void Main(string[] args) cil managed
  {
    .entrypoint

    // ldc = LoaD Constant
    // i4 = Integer 4 bytes
    // Format: action.datatype
    // This pushes the 4-byte integer constant, i.e. an Int32, onto the stack. 
    ldc.i4 0x02

    // Load another value
    ldc.i4 0x03

    // Add takes the top two items on the stack, adds them together and pushes the result back on top of the stack
    add
    
    // WriteLine it with the datatype of int32
    call void [mscorlib]System.Console::WriteLine(int32)

    // Same thing with floats
    ldc.r4 3.1
    ldc.r4 0.3
    add
    call void [mscorlib]System.Console::WriteLine(float32)

    ret
  }
}
