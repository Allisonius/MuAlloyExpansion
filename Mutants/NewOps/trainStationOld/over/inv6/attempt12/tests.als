
pred test1 {
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
inv6[]
}}}
}
run test1 for 3 but 1 steps
pred test2 {
some disj Train0: Train {
no Junction
no Junction' --loop state
no Track
no prox
no signal
no Track' --loop state
no Signal
no Signal' --loop state
Train = Train0
no pos
no pos' --loop state
no Entry
no Entry' --loop state
no Exit
no Exit' --loop state
no Green
no Green' --loop state
inv6[]
}
}
run test2 for 3 but 1 steps
pred test3 {
some disj Track2, Track1, Track0: Track {some disj Signal0, Signal1, Signal2: Signal {some disj Train1, Train0: Train {
no Junction
no Junction' --loop state
Track = Track0 + Track1 + Track2
prox = Track0->Track1 + Track2->Track0
signal = Track0->Signal2 + Track1->Signal1 + Track2->Signal0
Signal = Signal0 + Signal1 + Signal2
Train = Train0 + Train1
pos = Train0->Track2 + Train1->Track1
pos' = Train0->Track2 + Train1->Track1 --loop state
Entry = Track2
Exit = Track1
no Green
no Green' --loop state
inv6[]
}}}
}
run test3 for 3 but 1 steps
pred test4 {
some disj Track1, Track0: Track {some disj Signal0, Signal1: Signal {some disj Train2, Train1, Train0: Train {
no Junction
no Junction' --loop state
Track = Track0 + Track1
no prox
signal = Track0->Signal1 + Track1->Signal0
Signal = Signal0 + Signal1
Train = Train0 + Train1 + Train2
pos = Train0->Track0 + Train1->Track0 + Train2->Track0
pos' = Train0->Track0 + Train1->Track0 + Train2->Track0 --loop state
Entry = Track0 + Track1
Exit = Track0 + Track1
no Green
no Green' --loop state
inv6[]
}}}
}
run test4 for 3 but 1 steps
pred test5 {
some disj Track2, Track1, Track0: Track {some disj Signal0, Signal1, Signal2: Signal {some disj Train2, Train1, Train0: Train {
no Junction
no Junction' --loop state
Track = Track0 + Track1 + Track2
no prox
signal = Track0->Signal2 + Track1->Signal1 + Track2->Signal0
Signal = Signal0 + Signal1 + Signal2
Train = Train0 + Train1 + Train2
pos = Train0->Track1 + Train1->Track0 + Train2->Track0
pos' = Train0->Track1 + Train1->Track0 + Train2->Track0 --loop state
Entry = Track0 + Track1 + Track2
Exit = Track0 + Track1 + Track2
no Green
no Green' --loop state
inv6[]
}}}
}
run test5 for 3 but 1 steps
pred test6 {
some disj Track0: Track {some disj Train0: Train {
no Junction
no Junction' --loop state
Track = Track0
no prox
no signal
no Signal
no Signal' --loop state
Train = Train0
no pos
no pos' --loop state
Entry = Track0
Exit = Track0
no Green
no Green' --loop state
inv6[]
}}
}
run test6 for 3 but 1 steps
pred test7 {
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
inv6[]
}}}
}
run test7 for 3 but 1 steps
pred test8 {
some disj Train1, Train0: Train {
no Junction
no Junction' --loop state
no Track
no prox
no signal
no Track' --loop state
no Signal
no Signal' --loop state
Train = Train0 + Train1
no pos
no pos' --loop state
no Entry
no Entry' --loop state
no Exit
no Exit' --loop state
no Green
no Green' --loop state
inv6[]
}
}
run test8 for 3 but 1 steps
