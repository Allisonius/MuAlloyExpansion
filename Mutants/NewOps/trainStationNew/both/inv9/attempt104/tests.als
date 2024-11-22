
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
run test2 for 3 but 1 steps
pred test3 {
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
run test3 for 3 but 1 steps
pred test4 {
some disj Track1, Track0: Track {some disj Speed0, Semaphore0, Semaphore1: Signal {
Track = Track0 + Track1
succs = Track0->Track0 + Track1->Track0
signals = Track0->Semaphore0
Semaphore = Semaphore0 + Semaphore1
Speed = Speed0
Signal = Speed0 + Semaphore0 + Semaphore1
Junction = Track1
Entry = Track1
no Exit
no Exit' --loop state
inv9[]
}}
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
no Exit
no Exit' --loop state
inv9[]
}}
}
run test5 for 3 but 1 steps
pred test6 {
some disj Track1, Track0: Track {some disj Semaphore0, Semaphore1: Signal {
Track = Track0 + Track1
succs = Track0->Track0 + Track1->Track0
signals = Track0->Semaphore0 + Track0->Semaphore1
Semaphore = Semaphore0 + Semaphore1
no Speed
no Speed' --loop state
Signal = Semaphore0 + Semaphore1
no Junction
no Junction' --loop state
Entry = Track1
no Exit
no Exit' --loop state
inv9[]
}}
}
run test6 for 3 but 1 steps
pred test7 {
some disj Track0: Track {some disj Speed1, Speed0, Signal0: Signal {
Track = Track0
succs = Track0->Track0
signals = Track0->Speed0 + Track0->Speed1 + Track0->Signal0
no Semaphore
no Semaphore' --loop state
Speed = Speed0 + Speed1
Signal = Speed0 + Speed1 + Signal0
no Junction
no Junction' --loop state
Entry = Track0
Exit = Track0
inv9[]
}}
}
run test7 for 3 but 1 steps
pred test8 {
some disj Track0: Track {some disj Speed0, Signal0, Signal1: Signal {
Track = Track0
succs = Track0->Track0
signals = Track0->Signal0 + Track0->Signal1 + Track0->Speed0
no Semaphore
no Semaphore' --loop state
Speed = Speed0
Signal = Signal0 + Signal1 + Speed0
no Junction
no Junction' --loop state
Entry = Track0
Exit = Track0
inv9[]
}}
}
run test8 for 3 but 1 steps
pred test9 {
some disj Track1, Track0: Track {some disj Semaphore0, Semaphore1, Semaphore2: Signal {
Track = Track0 + Track1
succs = Track0->Track0
signals = Track0->Semaphore1 + Track0->Semaphore2 + Track1->Semaphore0 + Track1->Semaphore1 + Track1->Semaphore2
Semaphore = Semaphore0 + Semaphore1 + Semaphore2
no Speed
no Speed' --loop state
Signal = Semaphore0 + Semaphore1 + Semaphore2
no Junction
no Junction' --loop state
no Entry
no Entry' --loop state
Exit = Track1
inv9[]
}}
}
run test9 for 3 but 1 steps
pred test10 {
some disj Track0: Track {some disj Speed0, Semaphore0, Semaphore1: Signal {
Track = Track0
succs = Track0->Track0
signals = Track0->Speed0 + Track0->Semaphore0 + Track0->Semaphore1
Semaphore = Semaphore0 + Semaphore1
Speed = Speed0
Signal = Speed0 + Semaphore0 + Semaphore1
no Junction
no Junction' --loop state
no Entry
no Entry' --loop state
Exit = Track0
inv9[]
}}
}
run test10 for 3 but 1 steps
pred test11 {
some disj Track2, Track1, Track0: Track {some disj Semaphore0, Signal0: Signal {
Track = Track0 + Track1 + Track2
succs = Track1->Track1 + Track2->Track0 + Track2->Track1 + Track2->Track2
signals = Track0->Semaphore0 + Track1->Signal0
Semaphore = Semaphore0
no Speed
no Speed' --loop state
Signal = Signal0 + Semaphore0
Junction = Track2
Entry = Track2
no Exit
no Exit' --loop state
inv9[]
}}
}
run test11 for 3 but 1 steps
pred test12 {
some disj Track0: Track {some disj Speed0, Semaphore0, Semaphore1: Signal {
Track = Track0
succs = Track0->Track0
signals = Track0->Speed0 + Track0->Semaphore0 + Track0->Semaphore1
Semaphore = Semaphore0 + Semaphore1
Speed = Speed0
Signal = Speed0 + Semaphore0 + Semaphore1
Junction = Track0
no Entry
no Entry' --loop state
Exit = Track0
inv9[]
}}
}
run test12 for 3 but 1 steps
pred test13 {
some disj Track1, Track0: Track {some disj Speed0, Semaphore0, Semaphore1: Signal {
Track = Track0 + Track1
succs = Track0->Track0 + Track1->Track0
signals = Track0->Semaphore0 + Track0->Semaphore1 + Track1->Speed0
Semaphore = Semaphore0 + Semaphore1
Speed = Speed0
Signal = Speed0 + Semaphore0 + Semaphore1
no Junction
no Junction' --loop state
Entry = Track1
no Exit
no Exit' --loop state
inv9[]
}}
}
run test13 for 3 but 1 steps
pred test14 {
some disj Track1, Track0: Track {some disj Semaphore0, Signal0, Signal1: Signal {
Track = Track0 + Track1
succs = Track0->Track0 + Track1->Track0
signals = Track0->Signal1 + Track1->Semaphore0
Semaphore = Semaphore0
no Speed
no Speed' --loop state
Signal = Signal0 + Signal1 + Semaphore0
no Junction
no Junction' --loop state
Entry = Track1
no Exit
no Exit' --loop state
inv9[]
}}
}
run test14 for 3 but 1 steps
pred test15 {
some disj Track1, Track0: Track {some disj Speed1, Speed0, Semaphore0: Signal {
Track = Track0 + Track1
succs = Track0->Track0 + Track0->Track1 + Track1->Track0
signals = Track0->Speed1 + Track1->Semaphore0
Semaphore = Semaphore0
Speed = Speed0 + Speed1
Signal = Speed0 + Speed1 + Semaphore0
no Junction
no Junction' --loop state
Entry = Track1
no Exit
no Exit' --loop state
inv9[]
}}
}
run test15 for 3 but 1 steps
pred test16 {
some disj Track1, Track0: Track {some disj Speed0, Semaphore0, Signal0: Signal {
Track = Track0 + Track1
succs = Track0->Track0 + Track1->Track0
signals = Track0->Semaphore0 + Track1->Speed0 + Track1->Signal0
Semaphore = Semaphore0
Speed = Speed0
Signal = Speed0 + Signal0 + Semaphore0
no Junction
no Junction' --loop state
Entry = Track1
no Exit
no Exit' --loop state
inv9[]
}}
}
run test16 for 3 but 1 steps
