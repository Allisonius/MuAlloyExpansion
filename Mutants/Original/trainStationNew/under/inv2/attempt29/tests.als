
pred test1 {
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
inv2[]
}}
}
run test1 for 3 but 1 steps
pred test2 {
some disj Track0: Track {
Track = Track0
succs = Track0->Track0
no signals
no Semaphore
no Semaphore' --loop state
no Speed
no Speed' --loop state
no Signal
no Signal' --loop state
no Junction
no Junction' --loop state
Entry = Track0
Exit = Track0
inv2[]
}
}
run test2 for 3 but 1 steps
