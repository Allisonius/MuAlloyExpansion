
pred test1 {
some disj Track0: Track {some disj Speed1, Speed0, Semaphore0: Signal {
Track = Track0
succs = Track0->Track0
signals = Track0->Speed0 + Track0->Speed1 + Track0->Semaphore0
Semaphore = Semaphore0
Speed = Speed0 + Speed1
Signal = Speed0 + Speed1 + Semaphore0
no Junction
no Junction' --loop state
Entry = Track0
Exit = Track0
inv6[]
}}
}
run test1 for 3 but 1 steps
pred test2 {
some disj Track0: Track {some disj Semaphore0, Signal0, Signal1: Signal {
Track = Track0
succs = Track0->Track0
signals = Track0->Signal0 + Track0->Signal1 + Track0->Semaphore0
Semaphore = Semaphore0
no Speed
no Speed' --loop state
Signal = Signal0 + Signal1 + Semaphore0
no Junction
no Junction' --loop state
Entry = Track0
Exit = Track0
inv6[]
}}
}
run test2 for 3 but 1 steps
pred test3 {
some disj Track0: Track {some disj Speed0, Semaphore0, Signal0: Signal {
Track = Track0
succs = Track0->Track0
signals = Track0->Signal0 + Track0->Speed0 + Track0->Semaphore0
Semaphore = Semaphore0
Speed = Speed0
Signal = Signal0 + Speed0 + Semaphore0
no Junction
no Junction' --loop state
Entry = Track0
Exit = Track0
inv6[]
}}
}
run test3 for 3 but 1 steps
pred test4 {
some disj Track0: Track {some disj Speed1, Speed0, Signal0: Signal {
Track = Track0
succs = Track0->Track0
signals = Track0->Speed0 + Track0->Signal0 + Track0->Speed1
no Semaphore
no Semaphore' --loop state
Speed = Speed0 + Speed1
Signal = Speed0 + Signal0 + Speed1
no Junction
no Junction' --loop state
Entry = Track0
Exit = Track0
inv6[]
}}
}
run test4 for 3 but 1 steps
pred test5 {
some disj Track0: Track {some disj Speed0, Semaphore0, Signal0: Signal {
Track = Track0
succs = Track0->Track0
signals = Track0->Speed0 + Track0->Signal0 + Track0->Semaphore0
Semaphore = Semaphore0
Speed = Speed0
Signal = Speed0 + Signal0 + Semaphore0
no Junction
no Junction' --loop state
no Entry
no Entry' --loop state
Exit = Track0
inv6[]
}}
}
run test5 for 3 but 1 steps
