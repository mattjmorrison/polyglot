open fibonacci

let cmdArgs = System.Environment.GetCommandLineArgs()
let number = (int cmdArgs.[1]) - 1
printfn "%O" (fib number)
