
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
inv9[]
}}
}
run test1 for 3 but 1 steps
pred test2 {
some disj Track1, Track0: Track {some disj Speed0, Semaphore0: Signal {
Track = Track0 + Track1
succs = Track0->Track0
signals = Track0->Speed0 + Track0->Semaphore0
Semaphore = Semaphore0
Speed = Speed0
Signal = Speed0 + Semaphore0
Junction = Track0
Entry = Track0 + Track1
Exit = Track1
inv9[]
}}
}
run test2 for 3 but 1 steps
pred test3 {
some disj Track1, Track0: Track {some disj Speed0, Semaphore0: Signal {
Track = Track0 + Track1
succs = Track0->Track0
signals = Track0->Speed0 + Track0->Semaphore0
Semaphore = Semaphore0
Speed = Speed0
Signal = Speed0 + Semaphore0
Junction = Track1
Entry = Track0 + Track1
no Exit
no Exit' --loop state
inv9[]
}}
}
run test3 for 3 but 1 steps
pred test4 {
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
inv9[]
}
}
run test4 for 3 but 1 steps
pred test5 {
some disj Track0: Track {some disj Speed0, Semaphore0, Signal0: Signal {
Track = Track0
succs = Track0->Track0
signals = Track0->Signal0 + Track0->Speed0 + Track0->Semaphore0
Semaphore = Semaphore0
Speed = Speed0
Signal = Signal0 + Speed0 + Semaphore0
Junction = Track0
Entry = Track0
Exit = Track0
inv9[]
}}
}
run test5 for 3 but 1 steps
pred test6 {
some disj Track0: Track {some disj Semaphore0, Semaphore1, Semaphore2: Signal {
Track = Track0
succs = Track0->Track0
signals = Track0->Semaphore0 + Track0->Semaphore1 + Track0->Semaphore2
Semaphore = Semaphore0 + Semaphore1 + Semaphore2
no Speed
no Speed' --loop state
Signal = Semaphore0 + Semaphore1 + Semaphore2
no Junction
no Junction' --loop state
Entry = Track0
Exit = Track0
inv9[]
}}
}
run test6 for 3 but 1 steps
pred test7 {
some disj Track1, Track0: Track {some disj Speed0, Semaphore0, Signal0: Signal {
Track = Track0 + Track1
succs = Track0->Track0
signals = Track1->Signal0 + Track1->Speed0 + Track1->Semaphore0
Semaphore = Semaphore0
Speed = Speed0
Signal = Signal0 + Speed0 + Semaphore0
Junction = Track1
Entry = Track0 + Track1
no Exit
no Exit' --loop state
inv9[]
}}
}
run test7 for 3 but 1 steps
pred test8 {
some disj Track1, Track0: Track {some disj Speed0, Semaphore0, Signal0: Signal {
Track = Track0 + Track1
succs = Track0->Track0 + Track0->Track1
signals = Track1->Signal0 + Track1->Speed0 + Track1->Semaphore0
Semaphore = Semaphore0
Speed = Speed0
Signal = Signal0 + Speed0 + Semaphore0
Junction = Track0
Entry = Track0 + Track1
Exit = Track1
inv9[]
}}
}
run test8 for 3 but 1 steps
pred test9 {
some disj Track1, Track0: Track {some disj Speed0, Semaphore0, Signal0: Signal {
Track = Track0 + Track1
succs = Track0->Track0
signals = Track1->Signal0 + Track1->Speed0 + Track1->Semaphore0
Semaphore = Semaphore0
Speed = Speed0
Signal = Signal0 + Speed0 + Semaphore0
Junction = Track1
Entry = Track0 + Track1
Exit = Track1
inv9[]
}}
}
run test9 for 3 but 1 steps
pred test10 {
some disj Track1, Track0: Track {some disj Speed0, Semaphore0, Signal0: Signal {
Track = Track0 + Track1
succs = Track0->Track0
signals = Track1->Signal0 + Track1->Speed0 + Track1->Semaphore0
Semaphore = Semaphore0
Speed = Speed0
Signal = Signal0 + Speed0 + Semaphore0
Junction = Track1
Entry = Track0 + Track1
Exit = Track0 + Track1
inv9[]
}}
}
run test10 for 3 but 1 steps
