
open System
open Unchecked

let primes limit =
  let buf = System.Collections.BitArray(int limit + 1, true)
  let cull p = { p * p .. p .. limit } |> Seq.iter (fun c -> buf.[int c] <- false)
  { 2u .. uint32 (sqrt (double limit)) } |> Seq.iter (fun c -> if buf.[int c] then cull c)
  { 2u .. limit } |> Seq.map (fun i -> if buf.[int i] then i else 0u) |> Seq.filter ((<>) 0u)

[<EntryPoint>]
let main argv =
  printfn "%A" (primes (100000) |> Seq.length)
  exit 0 // return an integer exit code
