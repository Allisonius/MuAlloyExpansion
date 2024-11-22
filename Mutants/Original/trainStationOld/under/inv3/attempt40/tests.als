
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
inv3[]
}}}
}
run test1 for 3 but 1 steps
pred test2 {
some disj Track2, Track1, Track0: Track {some disj Train1, Train0: Train {
no Junction
no Junction'
no Junction'' --loop state
Track = Track0 + Track1 + Track2
prox = Track0->Track1 + Track2->Track0
no signal
no Signal
no Signal'
no Signal'' --loop state
Train = Train0 + Train1
pos = Train0->Track1 + Train1->Track1
pos' = Train0->Track1 + Train1->Track0
pos'' = Train0->Track1 + Train1->Track1 --loop state
Entry = Track2
Exit = Track1
no Green
no Green'
no Green'' --loop state
inv3[]
}}
}
run test2 for 3 but 2 steps
pred test3 {
some disj Track2, Track1, Track0: Track {some disj Signal0: Signal {some disj Train2, Train1, Train0: Train {
no Junction
no Junction' --loop state
Track = Track0 + Track1 + Track2
prox = Track0->Track1 + Track2->Track0
signal = Track2->Signal0
Signal = Signal0
Train = Train0 + Train1 + Train2
pos = Train0->Track2 + Train1->Track1 + Train2->Track0
pos' = Train0->Track2 + Train1->Track1 + Train2->Track0 --loop state
Entry = Track2
Exit = Track1
no Green
no Green' --loop state
inv3[]
}}}
}
run test3 for 3 but 1 steps
pred test4 {
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
inv3[]
}}}
}
run test4 for 3 but 1 steps
