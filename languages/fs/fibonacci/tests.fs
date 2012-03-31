module main
open NUnit.Framework
open fibonacci

[<TestFixture>]   
type ``BLAH`` ()=

    [<Test>]
    member this.``0 is 0``() = 
        Assert.AreEqual(0, fib 0)

    [<Test>]
    member this.``1 is 1``() =
        Assert.AreEqual(1, fib 1)
        
    [<Test>]
    member this.``2 is 1``() =
        Assert.AreEqual(1, fib 2)

    [<Test>]
    member this.``3 is 2``() =
        Assert.AreEqual(2, fib 3)

    [<Test>]
    member this.``4 is 3``() =
        Assert.AreEqual(3, fib 4)

    [<Test>]
    member this.``5 is 5``() =
        Assert.AreEqual(5, fib 5)

    [<Test>]
    member this.``6 is 8``() =
        Assert.AreEqual(8, fib 6)

    [<Test>]
    member this.``610 is 15``() =
        Assert.AreEqual(610, fib 15)
