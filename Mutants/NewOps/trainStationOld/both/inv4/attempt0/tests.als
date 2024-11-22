
pred test1 {
some disj Track1, Track0, Junction0: Track {some disj Signal0, Signal1: Signal {some disj Train2, Train1, Train0: Train {
Junction = Junction0
Track = Track0 + Track1 + Junction0
prox = Junction0->Track0 + Junction0->Track1
signal = Track1->Signal1 + Junction0->Signal0
Signal = Signal0 + Signal1
Train = Train0 + Train1 + Train2
pos = Train0->Track1 + Train1->Track0 + Train2->Track0
pos' = Train0->Track1 + Train1->Track0 + Train2->Track0 --loop state
Entry = Junction0
Exit = Track0 + Track1
no Green
no Green' --loop state
inv4[]
}}}
}
run test1 for 3 but 1 steps
pred test2 {
some disj Track0, Junction0, Junction1: Track {some disj Signal0, Signal1: Signal {some disj Train2, Train1, Train0: Train {
Junction = Junction0 + Junction1
Track = Track0 + Junction0 + Junction1
prox = Track0->Junction0 + Junction1->Track0 + Junction1->Junction0
signal = Track0->Signal1 + Junction1->Signal0
Signal = Signal0 + Signal1
Train = Train0 + Train1 + Train2
no pos
no pos' --loop state
Entry = Junction1
Exit = Junction0
no Green
no Green' --loop state
inv4[]
}}}
}
run test2 for 3 but 1 steps
pred test3 {
some disj Track2, Track1, Track0: Track {some disj Signal0, Signal1: Signal {some disj Train2, Train1, Train0: Train {
no Junction
no Junction' --loop state
Track = Track0 + Track1 + Track2
prox = Track0->Track1 + Track2->Track0
signal = Track1->Signal1 + Track2->Signal0
Signal = Signal0 + Signal1
Train = Train0 + Train1 + Train2
pos = Train0->Track1 + Train1->Track0 + Train2->Track0
pos' = Train0->Track1 + Train1->Track0 + Train2->Track0 --loop state
Entry = Track2
Exit = Track1
no Green
no Green' --loop state
inv4[]
}}}
}
run test3 for 3 but 1 steps
pred test4 {
some disj Track0, Junction0, Junction1: Track {some disj Signal0, Signal1: Signal {some disj Train2, Train1, Train0: Train {
Junction = Junction0 + Junction1
Track = Track0 + Junction0 + Junction1
prox = Track0->Junction0 + Junction1->Track0 + Junction1->Junction0
signal = Track0->Signal1 + Junction1->Signal0
Signal = Signal0 + Signal1
Train = Train0 + Train1 + Train2
pos = Train0->Junction1 + Train1->Junction1 + Train2->Junction1
pos' = Train0->Junction1 + Train1->Junction1 + Train2->Junction1 --loop state
Entry = Junction1
Exit = Junction0
no Green
no Green' --loop state
inv4[]
}}}
}
run test4 for 3 but 1 steps
pred test5 {
some disj Track1, Track0, Junction0: Track {some disj Signal0, Signal1: Signal {some disj Train2, Train1, Train0: Train {
Junction = Junction0
Track = Track0 + Track1 + Junction0
prox = Junction0->Track0 + Junction0->Track1
signal = Track1->Signal1 + Junction0->Signal0
Signal = Signal0 + Signal1
Train = Train0 + Train1 + Train2
pos = Train0->Junction0 + Train1->Junction0 + Train2->Junction0
pos' = Train0->Junction0 + Train1->Junction0 + Train2->Junction0 --loop state
Entry = Junction0
Exit = Track0 + Track1
no Green
no Green' --loop state
inv4[]
}}}
}
run test5 for 3 but 1 steps
pred test6 {
some disj Track0, Junction0, Junction1: Track {some disj Signal0, Signal1, Signal2: Signal {some disj Train2, Train1, Train0: Train {
Junction = Junction0 + Junction1
Track = Track0 + Junction0 + Junction1
prox = Track0->Junction0 + Junction1->Track0 + Junction1->Junction0
signal = Track0->Signal2 + Junction0->Signal1 + Junction1->Signal0
Signal = Signal0 + Signal1 + Signal2
Train = Train0 + Train1 + Train2
pos = Train1->Junction0 + Train2->Junction0
pos' = Train0->Track0 + Train1->Junction0 + Train2->Track0
pos'' = Train0->Track0 + Train1->Junction0 + Train2->Track0 --loop state
Entry = Junction1
Exit = Junction0
Green = Signal0 + Signal2
no Green'
no Green'' --loop state
inv4[]
}}}
}
run test6 for 3 but 2 steps
pred test7 {
some disj Track0, Junction0, Junction1: Track {some disj Signal0, Signal1: Signal {some disj Train2, Train1, Train0: Train {
Junction = Junction0 + Junction1
Track = Track0 + Junction0 + Junction1
prox = Track0->Junction0 + Junction1->Track0 + Junction1->Junction0
signal = Track0->Signal1 + Junction1->Signal0
Signal = Signal0 + Signal1
Train = Train0 + Train1 + Train2
pos = Train0->Junction1 + Train1->Junction0 + Train2->Junction0
pos' = Train2->Track0
pos'' = Train2->Track0 --loop state
Entry = Junction1
Exit = Junction0
Green = Signal1
no Green'
no Green'' --loop state
inv4[]
}}}
}
run test7 for 3 but 2 steps
pred test8 {
some disj Track1, Track0: Track {some disj Signal0, Signal1: Signal {some disj Train2, Train1, Train0: Train {
no Junction
no Junction'
no Junction'' --loop state
Track = Track0 + Track1
prox = Track1->Track0
signal = Track0->Signal1 + Track1->Signal0
Signal = Signal0 + Signal1
Train = Train0 + Train1 + Train2
pos = Train0->Track1 + Train1->Track0 + Train2->Track0
pos' = Train0->Track0 + Train1->Track0 + Train2->Track0
pos'' = Train0->Track0 + Train1->Track0 + Train2->Track0 --loop state
Entry = Track1
Exit = Track0
Green = Signal0
no Green'
no Green'' --loop state
inv4[]
}}}
}
run test8 for 3 but 2 steps
pred test9 {
some disj Track1, Track0, Junction0: Track {some disj Signal0, Signal1, Signal2: Signal {some disj Train2, Train1, Train0: Train {
Junction = Junction0
Track = Track0 + Track1 + Junction0
prox = Junction0->Track0 + Junction0->Track1
signal = Track0->Signal2 + Track1->Signal1 + Junction0->Signal0
Signal = Signal0 + Signal1 + Signal2
Train = Train0 + Train1 + Train2
pos = Train0->Junction0 + Train1->Junction0 + Train2->Junction0
pos' = Train0->Junction0 + Train1->Junction0 + Train2->Junction0 --loop state
Entry = Junction0
Exit = Track0 + Track1
no Green
no Green' --loop state
inv4[]
}}}
}
run test9 for 3 but 1 steps
pred test10 {
some disj Track2, Track1, Track0: Track {some disj Signal0, Signal1, Signal2: Signal {some disj Train2, Train1, Train0: Train {
no Junction
no Junction' --loop state
Track = Track0 + Track1 + Track2
no prox
signal = Track0->Signal2 + Track1->Signal1 + Track2->Signal0
Signal = Signal0 + Signal1 + Signal2
Train = Train0 + Train1 + Train2
pos = Train0->Track2 + Train1->Track2 + Train2->Track2
pos' = Train0->Track2 + Train1->Track2 + Train2->Track2 --loop state
Entry = Track0 + Track1 + Track2
Exit = Track0 + Track1 + Track2
no Green
no Green' --loop state
inv4[]
}}}
}
run test10 for 3 but 1 steps
