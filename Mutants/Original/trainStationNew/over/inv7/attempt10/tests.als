
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
inv7[]
}}
}
run test1 for 3 but 1 steps
pred test2 {
some disj Speed0, Semaphore0: Signal {
no Track
no succs
no signals
no Track' --loop state
Semaphore = Semaphore0
Speed = Speed0
Signal = Speed0 + Semaphore0
no Junction
no Junction' --loop state
no Entry
no Entry' --loop state
no Exit
no Exit' --loop state
inv7[]
}
}
run test2 for 3 but 1 steps
pred test3 {
some disj Track0: Track {some disj Speed0, Semaphore0, Signal0: Signal {
Track = Track0
no succs
signals = Track0->Signal0 + Track0->Speed0 + Track0->Semaphore0
Semaphore = Semaphore0
Speed = Speed0
Signal = Signal0 + Speed0 + Semaphore0
Junction = Track0
no Entry
no Entry' --loop state
Exit = Track0
inv7[]
}}
}
run test3 for 3 but 1 steps
pred test4 {
some disj Track2, Track1, Track0: Track {some disj Semaphore0, Semaphore1, Semaphore2: Signal {
Track = Track0 + Track1 + Track2
succs = Track0->Track2 + Track1->Track0 + Track2->Track1
signals = Track1->Semaphore0 + Track1->Semaphore1
Semaphore = Semaphore0 + Semaphore1 + Semaphore2
no Speed
no Speed' --loop state
Signal = Semaphore0 + Semaphore1 + Semaphore2
Junction = Track2
no Entry
no Entry' --loop state
no Exit
no Exit' --loop state
inv7[]
}}
}
run test4 for 3 but 1 steps
pred test5 {
some disj Track2, Track1, Track0: Track {some disj Speed0, Semaphore0, Signal0: Signal {
Track = Track0 + Track1 + Track2
succs = Track0->Track1 + Track1->Track0 + Track2->Track0
signals = Track1->Semaphore0
Semaphore = Semaphore0
Speed = Speed0
Signal = Signal0 + Speed0 + Semaphore0
Junction = Track2
no Entry
no Entry' --loop state
no Exit
no Exit' --loop state
inv7[]
}}
}
run test5 for 3 but 1 steps
pred test6 {
some disj Track2, Track1, Track0: Track {some disj Speed0, Semaphore0: Signal {
Track = Track0 + Track1 + Track2
succs = Track0->Track2 + Track1->Track0 + Track2->Track0
no signals
Semaphore = Semaphore0
Speed = Speed0
Signal = Speed0 + Semaphore0
Junction = Track0
Entry = Track2
Exit = Track1
inv7[]
}}
}
run test6 for 3 but 1 steps
pred test7 {
some disj Track2, Track1, Track0: Track {some disj Speed0, Semaphore0: Signal {
Track = Track0 + Track1 + Track2
succs = Track0->Track2 + Track1->Track0 + Track2->Track1
no signals
Semaphore = Semaphore0
Speed = Speed0
Signal = Speed0 + Semaphore0
Junction = Track2
Entry = Track1 + Track2
no Exit
no Exit' --loop state
inv7[]
}}
}
run test7 for 3 but 1 steps
