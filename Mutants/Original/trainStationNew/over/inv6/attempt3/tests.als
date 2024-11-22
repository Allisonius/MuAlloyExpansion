
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
inv6[]
}}
}
run test1 for 3 but 1 steps
pred test2 {
some disj Track0: Track {some disj Speed2, Speed1, Speed0: Signal {
Track = Track0
succs = Track0->Track0
signals = Track0->Speed0 + Track0->Speed1 + Track0->Speed2
no Semaphore
no Semaphore' --loop state
Speed = Speed0 + Speed1 + Speed2
Signal = Speed0 + Speed1 + Speed2
no Junction
no Junction' --loop state
Entry = Track0
Exit = Track0
inv6[]
}}
}
run test2 for 3 but 1 steps
pred test3 {
some disj Track2, Track1, Track0: Track {some disj Speed0, Semaphore0, Signal0: Signal {
Track = Track0 + Track1 + Track2
succs = Track2->Track2
no signals
Semaphore = Semaphore0
Speed = Speed0
Signal = Signal0 + Speed0 + Semaphore0
Junction = Track2
Entry = Track2
Exit = Track2
inv6[]
}}
}
run test3 for 3 but 1 steps
pred test4 {
some disj Track0: Track {some disj Speed1, Speed0, Signal0: Signal {
Track = Track0
succs = Track0->Track0
signals = Track0->Speed1
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
some disj Track2, Track1, Track0: Track {some disj Speed1, Speed0: Signal {
Track = Track0 + Track1 + Track2
succs = Track2->Track2
signals = Track0->Speed1 + Track1->Speed1 + Track2->Speed1
no Semaphore
no Semaphore' --loop state
Speed = Speed0 + Speed1
Signal = Speed0 + Speed1
no Junction
no Junction' --loop state
Entry = Track0 + Track1 + Track2
Exit = Track2
inv6[]
}}
}
run test5 for 3 but 1 steps
pred test6 {
some disj Track2, Track1, Track0: Track {some disj Speed0, Semaphore0: Signal {
Track = Track0 + Track1 + Track2
succs = Track2->Track2
signals = Track0->Speed0 + Track1->Speed0 + Track2->Speed0
Semaphore = Semaphore0
Speed = Speed0
Signal = Speed0 + Semaphore0
Junction = Track2
Entry = Track0 + Track1 + Track2
Exit = Track2
inv6[]
}}
}
run test6 for 3 but 1 steps
pred test7 {
some disj Track1, Track0: Track {some disj Speed1, Speed0, Signal0: Signal {
Track = Track0 + Track1
succs = Track1->Track1
signals = Track0->Speed1 + Track1->Speed1
no Semaphore
no Semaphore' --loop state
Speed = Speed0 + Speed1
Signal = Speed0 + Speed1 + Signal0
no Junction
no Junction' --loop state
Entry = Track0 + Track1
Exit = Track1
inv6[]
}}
}
run test7 for 3 but 1 steps
