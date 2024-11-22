
pred test1 {
some disj Track0: Track {some disj Speed0, Semaphore0: Signal {
Track = Track0
no succs
no signals
Semaphore = Semaphore0
Speed = Speed0
Signal = Speed0 + Semaphore0
Junction = Track0
Entry = Track0
Exit = Track0
inv8[]
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
inv8[]
}}
}
run test2 for 3 but 1 steps
pred test3 {
some disj Track1, Track0: Track {some disj Speed0, Semaphore0, Semaphore1: Signal {
Track = Track0 + Track1
succs = Track1->Track0 + Track1->Track1
signals = Track0->Speed0 + Track0->Semaphore0 + Track0->Semaphore1
Semaphore = Semaphore0 + Semaphore1
Speed = Speed0
Signal = Speed0 + Semaphore0 + Semaphore1
Junction = Track1
Entry = Track1
Exit = Track0 + Track1
inv8[]
}}
}
run test3 for 3 but 1 steps
pred test4 {
some disj Track0: Track {some disj Speed0, Semaphore0, Signal0: Signal {
Track = Track0
succs = Track0->Track0
signals = Track0->Signal0 + Track0->Speed0 + Track0->Semaphore0
Semaphore = Semaphore0
Speed = Speed0
Signal = Signal0 + Speed0 + Semaphore0
no Junction
no Junction' --loop state
no Entry
no Entry' --loop state
Exit = Track0
inv8[]
}}
}
run test4 for 3 but 1 steps
pred test5 {
some disj Track1, Track0: Track {some disj Speed0, Semaphore0: Signal {
Track = Track0 + Track1
succs = Track0->Track0
signals = Track0->Speed0 + Track0->Semaphore0
Semaphore = Semaphore0
Speed = Speed0
Signal = Speed0 + Semaphore0
Junction = Track1
no Entry
no Entry' --loop state
Exit = Track1
inv8[]
}}
}
run test5 for 3 but 1 steps
pred test6 {
some disj Track1, Track0: Track {some disj Speed0, Semaphore0: Signal {
Track = Track0 + Track1
succs = Track1->Track1
no signals
Semaphore = Semaphore0
Speed = Speed0
Signal = Speed0 + Semaphore0
no Junction
no Junction' --loop state
no Entry
no Entry' --loop state
Exit = Track1
inv8[]
}}
}
run test6 for 3 but 1 steps
pred test7 {
some disj Track1, Track0: Track {some disj Speed0, Semaphore0: Signal {
Track = Track0 + Track1
succs = Track0->Track0
signals = Track0->Speed0 + Track0->Semaphore0
Semaphore = Semaphore0
Speed = Speed0
Signal = Speed0 + Semaphore0
Junction = Track0
no Entry
no Entry' --loop state
Exit = Track1
inv8[]
}}
}
run test7 for 3 but 1 steps
pred test8 {
some disj Track1, Track0: Track {some disj Speed0, Semaphore0: Signal {
Track = Track0 + Track1
succs = Track1->Track1
signals = Track0->Speed0 + Track0->Semaphore0
Semaphore = Semaphore0
Speed = Speed0
Signal = Speed0 + Semaphore0
no Junction
no Junction' --loop state
no Entry
no Entry' --loop state
Exit = Track1
inv8[]
}}
}
run test8 for 3 but 1 steps
pred test9 {
some disj Track0: Track {some disj Speed0, Semaphore0: Signal {
Track = Track0
no succs
no signals
Semaphore = Semaphore0
Speed = Speed0
Signal = Speed0 + Semaphore0
no Junction
no Junction' --loop state
no Entry
no Entry' --loop state
Exit = Track0
inv8[]
}}
}
run test9 for 3 but 1 steps
pred test10 {
some disj Track1, Track0: Track {some disj Speed0, Semaphore0, Semaphore1: Signal {
Track = Track0 + Track1
succs = Track0->Track0 + Track1->Track0
signals = Track1->Speed0
Semaphore = Semaphore0 + Semaphore1
Speed = Speed0
Signal = Speed0 + Semaphore0 + Semaphore1
no Junction
no Junction' --loop state
Entry = Track0 + Track1
no Exit
no Exit' --loop state
inv8[]
}}
}
run test10 for 3 but 1 steps
pred test11 {
some disj Track0: Track {some disj Speed0, Semaphore0: Signal {
Track = Track0
no succs
no signals
Semaphore = Semaphore0
Speed = Speed0
Signal = Speed0 + Semaphore0
no Junction
no Junction' --loop state
Entry = Track0
Exit = Track0
inv8[]
}}
}
run test11 for 3 but 1 steps
pred test12 {
some disj Track1, Track0: Track {some disj Speed0, Semaphore0, Semaphore1: Signal {
Track = Track0 + Track1
succs = Track0->Track0 + Track1->Track0
signals = Track0->Speed0 + Track0->Semaphore0 + Track0->Semaphore1
Semaphore = Semaphore0 + Semaphore1
Speed = Speed0
Signal = Speed0 + Semaphore0 + Semaphore1
Junction = Track1
Entry = Track0 + Track1
no Exit
no Exit' --loop state
inv8[]
}}
}
run test12 for 3 but 1 steps
pred test13 {
some disj Track1, Track0: Track {some disj Speed0, Semaphore0: Signal {
Track = Track0 + Track1
succs = Track1->Track1
signals = Track0->Speed0 + Track0->Semaphore0
Semaphore = Semaphore0
Speed = Speed0
Signal = Speed0 + Semaphore0
no Junction
no Junction' --loop state
Entry = Track1
Exit = Track0 + Track1
inv8[]
}}
}
run test13 for 3 but 1 steps
pred test14 {
some disj Track1, Track0: Track {some disj Speed0, Semaphore0: Signal {
Track = Track0 + Track1
succs = Track1->Track1
signals = Track0->Speed0 + Track0->Semaphore0
Semaphore = Semaphore0
Speed = Speed0
Signal = Speed0 + Semaphore0
Junction = Track0
no Entry
no Entry' --loop state
Exit = Track1
inv8[]
}}
}
run test14 for 3 but 1 steps
pred test15 {
some disj Track1, Track0: Track {some disj Speed0, Semaphore0, Signal0: Signal {
Track = Track0 + Track1
succs = Track0->Track0 + Track1->Track0
signals = Track0->Speed0 + Track0->Signal0 + Track0->Semaphore0
Semaphore = Semaphore0
Speed = Speed0
Signal = Speed0 + Signal0 + Semaphore0
Junction = Track1
Entry = Track0 + Track1
no Exit
no Exit' --loop state
inv8[]
}}
}
run test15 for 3 but 1 steps
pred test16 {
some disj Track0: Track {some disj Speed0, Semaphore0: Signal {
Track = Track0
no succs
no signals
Semaphore = Semaphore0
Speed = Speed0
Signal = Speed0 + Semaphore0
Junction = Track0
Entry = Track0
no Exit
no Exit' --loop state
inv8[]
}}
}
run test16 for 3 but 1 steps
pred test17 {
some disj Track1, Track0: Track {some disj Speed0, Semaphore0, Semaphore1: Signal {
Track = Track0 + Track1
succs = Track0->Track1 + Track1->Track1
signals = Track0->Semaphore0 + Track0->Semaphore1
Semaphore = Semaphore0 + Semaphore1
Speed = Speed0
Signal = Speed0 + Semaphore0 + Semaphore1
no Junction
no Junction' --loop state
Entry = Track0 + Track1
Exit = Track1
inv8[]
}}
}
run test17 for 3 but 1 steps
pred test18 {
some disj Track1, Track0: Track {some disj Speed0, Semaphore0: Signal {
Track = Track0 + Track1
succs = Track0->Track0
signals = Track0->Speed0 + Track0->Semaphore0
Semaphore = Semaphore0
Speed = Speed0
Signal = Speed0 + Semaphore0
Junction = Track0
Entry = Track1
Exit = Track1
inv8[]
}}
}
run test18 for 3 but 1 steps
pred test19 {
some disj Track1, Track0: Track {some disj Speed0, Semaphore0, Semaphore1: Signal {
Track = Track0 + Track1
succs = Track0->Track1 + Track1->Track0
signals = Track0->Speed0 + Track0->Semaphore0 + Track0->Semaphore1
Semaphore = Semaphore0 + Semaphore1
Speed = Speed0
Signal = Speed0 + Semaphore0 + Semaphore1
no Junction
no Junction' --loop state
Entry = Track1
Exit = Track1
inv8[]
}}
}
run test19 for 3 but 1 steps
pred test20 {
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
inv8[]
}
}
run test20 for 3 but 1 steps
pred test21 {
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
inv8[]
}}
}
run test21 for 3 but 1 steps
pred test22 {
some disj Track1, Track0: Track {some disj Speed0, Signal0, Signal1: Signal {
Track = Track0 + Track1
succs = Track0->Track0 + Track1->Track0
signals = Track0->Signal0 + Track0->Signal1 + Track0->Speed0
no Semaphore
no Semaphore' --loop state
Speed = Speed0
Signal = Signal0 + Signal1 + Speed0
Junction = Track1
Entry = Track1
Exit = Track0
inv8[]
}}
}
run test22 for 3 but 1 steps
pred test23 {
some disj Track1, Track0: Track {some disj Semaphore0, Signal0, Signal1: Signal {
Track = Track0 + Track1
succs = Track1->Track0 + Track1->Track1
signals = Track0->Signal0 + Track0->Signal1
Semaphore = Semaphore0
no Speed
no Speed' --loop state
Signal = Signal0 + Signal1 + Semaphore0
no Junction
no Junction' --loop state
Entry = Track1
Exit = Track0
inv8[]
}}
}
run test23 for 3 but 1 steps
pred test24 {
some disj Track1, Track0: Track {some disj Speed0, Semaphore0, Semaphore1: Signal {
Track = Track0 + Track1
succs = Track0->Track0 + Track1->Track0
signals = Track0->Speed0 + Track0->Semaphore0 + Track0->Semaphore1
Semaphore = Semaphore0 + Semaphore1
Speed = Speed0
Signal = Speed0 + Semaphore0 + Semaphore1
Junction = Track1
Entry = Track1
Exit = Track0
inv8[]
}}
}
run test24 for 3 but 1 steps
pred test25 {
some disj Track1, Track0: Track {some disj Semaphore0, Semaphore1, Signal0: Signal {
Track = Track0 + Track1
succs = Track1->Track0 + Track1->Track1
signals = Track0->Signal0 + Track0->Semaphore0 + Track0->Semaphore1
Semaphore = Semaphore0 + Semaphore1
no Speed
no Speed' --loop state
Signal = Signal0 + Semaphore0 + Semaphore1
no Junction
no Junction' --loop state
Entry = Track1
Exit = Track0
inv8[]
}}
}
run test25 for 3 but 1 steps
pred test26 {
some disj Track1, Track0: Track {some disj Speed0, Semaphore0: Signal {
Track = Track0 + Track1
succs = Track0->Track0 + Track0->Track1
signals = Track0->Speed0 + Track0->Semaphore0
Semaphore = Semaphore0
Speed = Speed0
Signal = Speed0 + Semaphore0
Junction = Track0
Entry = Track1
Exit = Track0
inv8[]
}}
}
run test26 for 3 but 1 steps
pred test27 {
some disj Track1, Track0: Track {some disj Speed0, Semaphore0: Signal {
Track = Track0 + Track1
succs = Track0->Track0 + Track0->Track1
signals = Track0->Speed0 + Track0->Semaphore0
Semaphore = Semaphore0
Speed = Speed0
Signal = Speed0 + Semaphore0
Junction = Track0
Entry = Track1
Exit = Track1
inv8[]
}}
}
run test27 for 3 but 1 steps
pred test28 {
some disj Track1, Track0: Track {some disj Speed0, Semaphore0: Signal {
Track = Track0 + Track1
succs = Track0->Track0 + Track1->Track0
signals = Track0->Speed0 + Track0->Semaphore0
Semaphore = Semaphore0
Speed = Speed0
Signal = Speed0 + Semaphore0
Junction = Track1
Entry = Track1
Exit = Track1
inv8[]
}}
}
run test28 for 3 but 1 steps
pred test29 {
some disj Track1, Track0: Track {some disj Semaphore0, Semaphore1, Signal0: Signal {
Track = Track0 + Track1
succs = Track1->Track0 + Track1->Track1
no signals
Semaphore = Semaphore0 + Semaphore1
no Speed
no Speed' --loop state
Signal = Signal0 + Semaphore0 + Semaphore1
Junction = Track0
Entry = Track1
Exit = Track1
inv8[]
}}
}
run test29 for 3 but 1 steps
pred test30 {
some disj Track1, Track0: Track {some disj Speed0, Semaphore0, Signal0: Signal {
Track = Track0 + Track1
succs = Track0->Track0 + Track0->Track1
signals = Track0->Speed0 + Track0->Signal0 + Track0->Semaphore0
Semaphore = Semaphore0
Speed = Speed0
Signal = Speed0 + Signal0 + Semaphore0
no Junction
no Junction' --loop state
Entry = Track1
Exit = Track1
inv8[]
}}
}
run test30 for 3 but 1 steps
pred test31 {
some disj Track1, Track0: Track {some disj Speed0, Semaphore0: Signal {
Track = Track0 + Track1
succs = Track1->Track0
signals = Track0->Speed0 + Track0->Semaphore0
Semaphore = Semaphore0
Speed = Speed0
Signal = Speed0 + Semaphore0
Junction = Track1
Entry = Track1
Exit = Track0
inv8[]
}}
}
run test31 for 3 but 1 steps
pred test32 {
some disj Track1, Track0: Track {some disj Speed0, Semaphore0, Signal0: Signal {
Track = Track0 + Track1
succs = Track1->Track0
signals = Track0->Speed0 + Track0->Signal0 + Track0->Semaphore0
Semaphore = Semaphore0
Speed = Speed0
Signal = Speed0 + Signal0 + Semaphore0
no Junction
no Junction' --loop state
Entry = Track1
Exit = Track0
inv8[]
}}
}
run test32 for 3 but 1 steps
pred test33 {
some disj Track1, Track0: Track {some disj Speed0, Semaphore0, Semaphore1: Signal {
Track = Track0 + Track1
succs = Track1->Track0
signals = Track0->Speed0 + Track0->Semaphore0 + Track0->Semaphore1
Semaphore = Semaphore0 + Semaphore1
Speed = Speed0
Signal = Speed0 + Semaphore0 + Semaphore1
Junction = Track1
Entry = Track1
Exit = Track0
inv8[]
}}
}
run test33 for 3 but 1 steps
pred test34 {
some disj Track1, Track0: Track {some disj Semaphore0, Semaphore1, Signal0: Signal {
Track = Track0 + Track1
succs = Track1->Track0
signals = Track0->Signal0 + Track0->Semaphore1 + Track1->Semaphore0
Semaphore = Semaphore0 + Semaphore1
no Speed
no Speed' --loop state
Signal = Signal0 + Semaphore0 + Semaphore1
Junction = Track0
Entry = Track1
Exit = Track0
inv8[]
}}
}
run test34 for 3 but 1 steps
pred test35 {
some disj Track1, Track0: Track {some disj Speed1, Speed0, Signal0: Signal {
Track = Track0 + Track1
succs = Track0->Track1 + Track1->Track0 + Track1->Track1
signals = Track0->Signal0 + Track0->Speed1
no Semaphore
no Semaphore' --loop state
Speed = Speed0 + Speed1
Signal = Speed0 + Signal0 + Speed1
Junction = Track0
Entry = Track1
Exit = Track0
inv8[]
}}
}
run test35 for 3 but 1 steps
pred test36 {
some disj Track1, Track0: Track {some disj Speed0, Semaphore0: Signal {
Track = Track0 + Track1
succs = Track1->Track0
signals = Track0->Speed0 + Track0->Semaphore0
Semaphore = Semaphore0
Speed = Speed0
Signal = Speed0 + Semaphore0
no Junction
no Junction' --loop state
Entry = Track1
Exit = Track1
inv8[]
}}
}
run test36 for 3 but 1 steps
pred test37 {
some disj Track1, Track0: Track {some disj Speed0, Semaphore0, Semaphore1: Signal {
Track = Track0 + Track1
succs = Track1->Track0
signals = Track0->Speed0 + Track0->Semaphore0 + Track0->Semaphore1
Semaphore = Semaphore0 + Semaphore1
Speed = Speed0
Signal = Speed0 + Semaphore0 + Semaphore1
Junction = Track0
Entry = Track1
Exit = Track0
inv8[]
}}
}
run test37 for 3 but 1 steps
pred test38 {
some disj Track1, Track0: Track {some disj Semaphore0, Signal0, Signal1: Signal {
Track = Track0 + Track1
succs = Track1->Track0
signals = Track0->Signal1
Semaphore = Semaphore0
no Speed
no Speed' --loop state
Signal = Signal0 + Signal1 + Semaphore0
no Junction
no Junction' --loop state
Entry = Track1
Exit = Track0
inv8[]
}}
}
run test38 for 3 but 1 steps
