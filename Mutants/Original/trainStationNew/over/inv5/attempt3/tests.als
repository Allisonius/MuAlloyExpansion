
pred test1 {
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
inv5[]
}}
}
run test1 for 3 but 1 steps
pred test2 {
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
inv5[]
}}
}
run test2 for 3 but 1 steps
pred test3 {
some disj Speed0, Semaphore0, Semaphore1: Signal {
no Track
no succs
no signals
no Track' --loop state
Semaphore = Semaphore0 + Semaphore1
Speed = Speed0
Signal = Speed0 + Semaphore0 + Semaphore1
no Junction
no Junction' --loop state
no Entry
no Entry' --loop state
no Exit
no Exit' --loop state
inv5[]
}
}
run test3 for 3 but 1 steps
pred test4 {
some disj Speed0, Semaphore0, Signal0: Signal {
no Track
no succs
no signals
no Track' --loop state
Semaphore = Semaphore0
Speed = Speed0
Signal = Signal0 + Speed0 + Semaphore0
no Junction
no Junction' --loop state
no Entry
no Entry' --loop state
no Exit
no Exit' --loop state
inv5[]
}
}
run test4 for 3 but 1 steps
pred test5 {
some disj Track1, Track0: Track {some disj Speed0, Semaphore0: Signal {
Track = Track0 + Track1
succs = Track1->Track0
signals = Track1->Speed0 + Track1->Semaphore0
Semaphore = Semaphore0
Speed = Speed0
Signal = Speed0 + Semaphore0
no Junction
no Junction' --loop state
Entry = Track1
Exit = Track1
inv5[]
}}
}
run test5 for 3 but 1 steps
pred test6 {
some disj Track1, Track0: Track {some disj Speed0, Semaphore0: Signal {
Track = Track0 + Track1
succs = Track1->Track1
signals = Track1->Speed0 + Track1->Semaphore0
Semaphore = Semaphore0
Speed = Speed0
Signal = Speed0 + Semaphore0
no Junction
no Junction' --loop state
Entry = Track1
Exit = Track1
inv5[]
}}
}
run test6 for 3 but 1 steps
pred test7 {
some disj Track1, Track0: Track {some disj Speed0, Semaphore0: Signal {
Track = Track0 + Track1
succs = Track0->Track0 + Track0->Track1 + Track1->Track0 + Track1->Track1
signals = Track1->Speed0 + Track1->Semaphore0
Semaphore = Semaphore0
Speed = Speed0
Signal = Speed0 + Semaphore0
no Junction
no Junction' --loop state
Entry = Track1
Exit = Track1
inv5[]
}}
}
run test7 for 3 but 1 steps
pred test8 {
some disj Track1, Track0: Track {some disj Speed0, Semaphore0, Signal0: Signal {
Track = Track0 + Track1
succs = Track0->Track1 + Track1->Track1
signals = Track1->Signal0 + Track1->Speed0 + Track1->Semaphore0
Semaphore = Semaphore0
Speed = Speed0
Signal = Signal0 + Speed0 + Semaphore0
no Junction
no Junction' --loop state
Entry = Track1
Exit = Track1
inv5[]
}}
}
run test8 for 3 but 1 steps
pred test9 {
some disj Track1, Track0: Track {some disj Speed0, Semaphore0, Signal0: Signal {
Track = Track0 + Track1
succs = Track1->Track0 + Track1->Track1
signals = Track1->Signal0 + Track1->Speed0 + Track1->Semaphore0
Semaphore = Semaphore0
Speed = Speed0
Signal = Signal0 + Speed0 + Semaphore0
no Junction
no Junction' --loop state
Entry = Track1
Exit = Track1
inv5[]
}}
}
run test9 for 3 but 1 steps
pred test10 {
some disj Track1, Track0: Track {some disj Speed0, Semaphore0: Signal {
Track = Track0 + Track1
succs = Track1->Track0
signals = Track1->Speed0
Semaphore = Semaphore0
Speed = Speed0
Signal = Speed0 + Semaphore0
no Junction
no Junction' --loop state
Entry = Track1
Exit = Track1
inv5[]
}}
}
run test10 for 3 but 1 steps
pred test11 {
some disj Track1, Track0: Track {some disj Speed0, Semaphore0, Semaphore1: Signal {
Track = Track0 + Track1
succs = Track0->Track1 + Track1->Track0
signals = Track1->Speed0 + Track1->Semaphore1
Semaphore = Semaphore0 + Semaphore1
Speed = Speed0
Signal = Speed0 + Semaphore0 + Semaphore1
no Junction
no Junction' --loop state
Entry = Track1
Exit = Track1
inv5[]
}}
}
run test11 for 3 but 1 steps
pred test12 {
some disj Track1, Track0: Track {some disj Speed0, Semaphore0: Signal {
Track = Track0 + Track1
succs = Track0->Track0 + Track0->Track1 + Track1->Track0 + Track1->Track1
signals = Track1->Speed0
Semaphore = Semaphore0
Speed = Speed0
Signal = Speed0 + Semaphore0
no Junction
no Junction' --loop state
Entry = Track1
Exit = Track1
inv5[]
}}
}
run test12 for 3 but 1 steps
pred test13 {
some disj Track1, Track0: Track {some disj Speed0, Semaphore0: Signal {
Track = Track0 + Track1
succs = Track0->Track0 + Track0->Track1
signals = Track0->Semaphore0 + Track1->Speed0 + Track1->Semaphore0
Semaphore = Semaphore0
Speed = Speed0
Signal = Speed0 + Semaphore0
Junction = Track0 + Track1
no Entry
no Entry' --loop state
no Exit
no Exit' --loop state
inv5[]
}}
}
run test13 for 3 but 1 steps
