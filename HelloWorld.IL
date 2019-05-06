.assembly extern mscorlib {}
.assembly TodoIL {}
.module Program.exe

.class TodoIL.Program extends [mscorlib]System.Object
{
 .method static void Main(string[] args)  cil managed
 {
  .entrypoint
  ldstr "Hello World"
  call void [mscorlib]System.Console::WriteLine(string)
  ret
 }
}