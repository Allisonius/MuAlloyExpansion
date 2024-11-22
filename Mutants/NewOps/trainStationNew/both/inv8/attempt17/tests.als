
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
inv8[]
}}
}
run test1 for 3 but 1 steps
pred test2 {
some disj Track0: Track {some disj Speed0, Signal0, Signal1: Signal {
Track = Track0
succs = Track0->Track0
signals = Track0->Signal0 + Track0->Signal1 + Track0->Speed0
no Semaphore
no Semaphore' --loop state
Speed = Speed0
Signal = Signal0 + Signal1 + Speed0
Junction = Track0
Entry = Track0
Exit = Track0
inv8[]
}}
}
run test2 for 3 but 1 steps
pred test3 {
some disj Track0: Track {some disj Signal0, Signal1, Signal2: Signal {
Track = Track0
succs = Track0->Track0
signals = Track0->Signal0 + Track0->Signal1 + Track0->Signal2
no Semaphore
no Semaphore' --loop state
no Speed
no Speed' --loop state
Signal = Signal0 + Signal1 + Signal2
no Junction
no Junction' --loop state
Entry = Track0
Exit = Track0
inv8[]
}}
}
run test3 for 3 but 1 steps
pred test4 {
some disj Track1, Track0: Track {some disj Signal0: Signal {
Track = Track0 + Track1
succs = Track0->Track0
no signals
no Semaphore
no Semaphore' --loop state
no Speed
no Speed' --loop state
Signal = Signal0
no Junction
no Junction' --loop state
no Entry
no Entry' --loop state
Exit = Track1
inv8[]
}}
}
run test4 for 3 but 1 steps
pred test5 {
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
Junction = Track0
no Entry
no Entry' --loop state
no Exit
no Exit' --loop state
inv8[]
}
}
run test5 for 3 but 1 steps
pred test6 {
some disj Track0: Track {some disj Signal0, Signal1, Signal2: Signal {
Track = Track0
succs = Track0->Track0
signals = Track0->Signal0 + Track0->Signal1 + Track0->Signal2
no Semaphore
no Semaphore' --loop state
no Speed
no Speed' --loop state
Signal = Signal0 + Signal1 + Signal2
no Junction
no Junction' --loop state
no Entry
no Entry' --loop state
Exit = Track0
inv8[]
}}
}
run test6 for 3 but 1 steps
pred test7 {
some disj Track0: Track {some disj Signal0, Signal1, Signal2: Signal {
Track = Track0
succs = Track0->Track0
signals = Track0->Signal0 + Track0->Signal1 + Track0->Signal2
no Semaphore
no Semaphore' --loop state
no Speed
no Speed' --loop state
Signal = Signal0 + Signal1 + Signal2
no Junction
no Junction' --loop state
Entry = Track0
no Exit
no Exit' --loop state
inv8[]
}}
}
run test7 for 3 but 1 steps
pred test8 {
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
inv8[]
}
}
run test8 for 3 but 1 steps
pred test9 {
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
Junction = Track0
Entry = Track0
Exit = Track0
inv8[]
}
}
run test9 for 3 but 1 steps
