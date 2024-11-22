
pred test1 {
some disj Track0, Junction0, Junction1: Track {some disj Signal0, Signal1, Signal2: Signal {some disj Train2, Train1, Train0: Train {
Junction = Junction0 + Junction1
Track = Track0 + Junction0 + Junction1
prox = Track0->Junction0 + Junction1->Track0 + Junction1->Junction0
signal = Track0->Signal2 + Junction0->Signal1 + Junction1->Signal0
Signal = Signal0 + Signal1 + Signal2
Train = Train0 + Train1 + Train2
pos = Train0->Junction1 + Train1->Junction0 + Train2->Track0
pos' = Train0->Junction1 + Train1->Junction0 + Train2->Track0 --loop state
Entry = Junction1
Exit = Junction0
no Green
no Green' --loop state
inv3[]
}}}
}
run test1 for 3 but 1 steps
pred test2 {
some disj Track1, Track0, Junction0: Track {some disj Signal0, Signal1: Signal {some disj Train2, Train1, Train0: Train {
Junction = Junction0
Track = Track0 + Track1 + Junction0
prox = Junction0->Track0 + Junction0->Track1
signal = Track1->Signal1 + Junction0->Signal0
Signal = Signal0 + Signal1
Train = Train0 + Train1 + Train2
pos = Train0->Track1 + Train1->Track1 + Train2->Track0
pos' = Train0->Track1 + Train1->Track1 + Train2->Track0 --loop state
Entry = Junction0
Exit = Track0 + Track1
no Green
no Green' --loop state
inv3[]
}}}
}
run test2 for 3 but 1 steps
pred test3 {
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
inv3[]
}}}
}
run test3 for 3 but 1 steps
pred test4 {
some disj Track0, Junction0, Junction1: Track {some disj Signal0, Signal1, Signal2: Signal {some disj Train2, Train1, Train0: Train {
Junction = Junction0 + Junction1
Track = Track0 + Junction0 + Junction1
prox = Track0->Junction0 + Junction1->Track0 + Junction1->Junction0
signal = Track0->Signal2 + Junction0->Signal1 + Junction1->Signal0
Signal = Signal0 + Signal1 + Signal2
Train = Train0 + Train1 + Train2
pos = Train1->Junction0 + Train2->Junction0
pos' = Train0->Junction0 + Train2->Junction1
pos'' = Train0->Junction0 + Train2->Junction1 --loop state
Entry = Junction1
Exit = Junction0
no Green
no Green'
no Green'' --loop state
inv3[]
}}}
}
run test4 for 3 but 2 steps
pred test5 {
some disj Track0, Junction0, Junction1: Track {some disj Signal0, Signal1, Signal2: Signal {some disj Train2, Train1, Train0: Train {
Junction = Junction0 + Junction1
Track = Track0 + Junction0 + Junction1
prox = Track0->Junction0 + Junction1->Track0 + Junction1->Junction0
signal = Track0->Signal2 + Junction0->Signal1 + Junction1->Signal0
Signal = Signal0 + Signal1 + Signal2
Train = Train0 + Train1 + Train2
pos = Train1->Junction0 + Train2->Junction0
pos' = Train0->Junction0 + Train2->Junction1
pos'' = Train1->Junction0 + Train2->Junction0 --loop state
Entry = Junction1
Exit = Junction0
Green = Signal2
no Green'
Green'' = Signal2 --loop state
inv3[]
}}}
}
run test5 for 3 but 2 steps
