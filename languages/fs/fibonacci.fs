let rec fib n = if n < 2 then n else fib (n-1) + fib(n-2)

let cmdArgs = System.Environment.GetCommandLineArgs()
let number = (int cmdArgs.[1])
printfn "%O" (fib number)