
pred test1 {
some disj Track2, Track1, Track0: Track {some disj Signal0, Signal1: Signal {some disj Train2, Train1, Train0: Train {
no Junction
no Junction' --loop state
Track = Track0 + Track1 + Track2
prox = Track1->Track0
signal = Track1->Signal1 + Track2->Signal0
Signal = Signal0 + Signal1
Train = Train0 + Train1 + Train2
pos = Train0->Track1 + Train1->Track0 + Train2->Track0
pos' = Train0->Track1 + Train1->Track0 + Train2->Track0 --loop state
Entry = Track1 + Track2
Exit = Track0 + Track2
no Green
no Green' --loop state
inv9[]
}}}
}
run test1 for 3 but 1 steps
pred test2 {
some disj Track1, Track0, Junction0: Track {some disj Signal0, Signal1, Signal2: Signal {
Junction = Junction0
Track = Track0 + Track1 + Junction0
prox = Junction0->Track0 + Junction0->Track1
signal = Track0->Signal2 + Track1->Signal1 + Junction0->Signal0
Signal = Signal0 + Signal1 + Signal2
no Train
no pos
no Train' --loop state
no pos' --loop state
Entry = Junction0
Exit = Track0 + Track1
no Green
no Green' --loop state
inv9[]
}}
}
run test2 for 3 but 1 steps
pred test3 {
some disj Track2, Track1, Track0: Track {some disj Signal0, Signal1: Signal {some disj Train1, Train0: Train {
no Junction
no Junction'
no Junction'' --loop state
Track = Track0 + Track1 + Track2
no prox
signal = Track1->Signal1 + Track2->Signal0
Signal = Signal0 + Signal1
Train = Train0 + Train1
no pos
pos' = Train0->Track1 + Train1->Track0
pos'' = Train0->Track1 + Train1->Track0 --loop state
Entry = Track0 + Track1 + Track2
Exit = Track0 + Track1 + Track2
Green = Signal0
no Green'
no Green'' --loop state
inv9[]
}}}
}
run test3 for 3 but 2 steps
pred test4 {
some disj Track2, Track1, Track0: Track {some disj Train2, Train1, Train0: Train {
no Junction
no Junction'
no Junction'' --loop state
Track = Track0 + Track1 + Track2
prox = Track0->Track1 + Track2->Track0
no signal
no Signal
no Signal'
no Signal'' --loop state
Train = Train0 + Train1 + Train2
no pos
pos' = Train0->Track2 + Train1->Track2 + Train2->Track2
pos'' = Train0->Track2 + Train1->Track2 + Train2->Track2 --loop state
Entry = Track2
Exit = Track1
no Green
no Green'
no Green'' --loop state
inv9[]
}}
}
run test4 for 3 but 2 steps
pred test5 {
some disj Track2, Track1, Track0: Track {some disj Signal0, Signal1: Signal {some disj Train2, Train1, Train0: Train {
no Junction
no Junction'
no Junction''
no Junction''' --loop state
Track = Track0 + Track1 + Track2
prox = Track0->Track1 + Track2->Track0
signal = Track1->Signal1 + Track2->Signal0
Signal = Signal0 + Signal1
Train = Train0 + Train1 + Train2
pos = Train1->Track1 + Train2->Track1
no pos'
pos'' = Train0->Track2 + Train1->Track2 + Train2->Track2
pos''' = Train0->Track2 + Train1->Track2 + Train2->Track2 --loop state
Entry = Track2
Exit = Track1
Green = Signal1
Green' = Signal1
no Green''
no Green''' --loop state
inv9[]
}}}
}
run test5 for 3 but 3 steps
pred test6 {
some disj Track2, Track1, Track0: Track {some disj Train2, Train1, Train0: Train {
no Junction
no Junction'
no Junction'' --loop state
Track = Track0 + Track1 + Track2
no prox
no signal
no Signal
no Signal'
no Signal'' --loop state
Train = Train0 + Train1 + Train2
no pos
pos' = Train0->Track2 + Train1->Track2 + Train2->Track2
pos'' = Train0->Track2 + Train1->Track2 + Train2->Track2 --loop state
Entry = Track0 + Track1 + Track2
Exit = Track0 + Track1 + Track2
no Green
no Green'
no Green'' --loop state
inv9[]
}}
}
run test6 for 3 but 2 steps
pred test7 {
some disj Track1, Junction0, Track0: Track {some disj Signal0, Signal1: Signal {some disj Train2, Train1, Train0: Train {
Junction = Junction0
Track = Junction0 + Track0 + Track1
prox = Track0->Junction0 + Track1->Junction0
signal = Track0->Signal1 + Track1->Signal0
Signal = Signal0 + Signal1
Train = Train0 + Train1 + Train2
pos = Train0->Track0 + Train1->Junction0 + Train2->Junction0
pos' = Train0->Track0 + Train1->Junction0 + Train2->Junction0 --loop state
Entry = Track0 + Track1
Exit = Junction0
no Green
no Green' --loop state
inv9[]
}}}
}
run test7 for 3 but 1 steps
pred test8 {
some disj Track2, Track1, Track0: Track {some disj Signal0, Signal1: Signal {
no Junction
no Junction' --loop state
Track = Track0 + Track1 + Track2
no prox
signal = Track1->Signal1 + Track2->Signal0
Signal = Signal0 + Signal1
no Train
no pos
no Train' --loop state
no pos' --loop state
Entry = Track0 + Track1 + Track2
Exit = Track0 + Track1 + Track2
no Green
no Green' --loop state
inv9[]
}}
}
run test8 for 3 but 1 steps
pred test9 {
some disj Track1, Junction0, Track0: Track {some disj Signal0, Signal1: Signal {
Junction = Junction0
Track = Junction0 + Track0 + Track1
prox = Track0->Junction0 + Track1->Junction0
signal = Track0->Signal1 + Track1->Signal0
Signal = Signal0 + Signal1
no Train
no pos
no Train' --loop state
no pos' --loop state
Entry = Track0 + Track1
Exit = Junction0
no Green
no Green' --loop state
inv9[]
}}
}
run test9 for 3 but 1 steps
pred test10 {
some disj Track2, Track1, Track0: Track {some disj Signal0, Signal1, Signal2: Signal {some disj Train2, Train1, Train0: Train {
no Junction
no Junction'
no Junction'' --loop state
Track = Track0 + Track1 + Track2
no prox
signal = Track0->Signal2 + Track1->Signal1 + Track2->Signal0
Signal = Signal0 + Signal1 + Signal2
Train = Train0 + Train1 + Train2
no pos
pos' = Train0->Track1 + Train1->Track1 + Train2->Track0
pos'' = Train0->Track1 + Train1->Track1 + Train2->Track0 --loop state
Entry = Track0 + Track1 + Track2
Exit = Track0 + Track1 + Track2
no Green
no Green'
no Green'' --loop state
inv9[]
}}}
}
run test10 for 3 but 2 steps
pred test11 {
some disj Track1, Junction0, Track0: Track {some disj Signal0, Signal1, Signal2: Signal {some disj Train2, Train1, Train0: Train {
Junction = Junction0
Track = Junction0 + Track0 + Track1
prox = Track0->Junction0 + Track1->Junction0
signal = Junction0->Signal2 + Track0->Signal1 + Track1->Signal0
Signal = Signal0 + Signal1 + Signal2
Train = Train0 + Train1 + Train2
pos = Train1->Track0 + Train2->Track0
pos' = Train0->Track0
pos'' = Train1->Track0 + Train2->Track0 --loop state
Entry = Track0 + Track1
Exit = Junction0
Green = Signal0
no Green'
Green'' = Signal0 --loop state
inv9[]
}}}
}
run test11 for 3 but 2 steps
pred test12 {
some disj Track2, Track1, Track0: Track {some disj Signal0, Signal1: Signal {
no Junction
no Junction' --loop state
Track = Track0 + Track1 + Track2
prox = Track1->Track0
signal = Track0->Signal1 + Track2->Signal0
Signal = Signal0 + Signal1
no Train
no pos
no Train' --loop state
no pos' --loop state
Entry = Track1 + Track2
Exit = Track0 + Track2
no Green
no Green' --loop state
inv9[]
}}
}
run test12 for 3 but 1 steps
pred test13 {
some disj Track0, Junction0, Junction1: Track {some disj Signal0, Signal1, Signal2: Signal {
Junction = Junction0 + Junction1
Track = Track0 + Junction0 + Junction1
prox = Track0->Junction0 + Junction1->Track0 + Junction1->Junction0
signal = Track0->Signal2 + Junction0->Signal1 + Junction1->Signal0
Signal = Signal0 + Signal1 + Signal2
no Train
no pos
no Train' --loop state
no pos' --loop state
Entry = Junction1
Exit = Junction0
no Green
no Green' --loop state
inv9[]
}}
}
run test13 for 3 but 1 steps
pred test14 {
some disj Track2, Track1, Track0: Track {some disj Signal0, Signal1, Signal2: Signal {some disj Train1, Train0: Train {
no Junction
no Junction' --loop state
Track = Track0 + Track1 + Track2
prox = Track0->Track1 + Track2->Track0
signal = Track0->Signal2 + Track1->Signal1 + Track2->Signal0
Signal = Signal0 + Signal1 + Signal2
Train = Train0 + Train1
no pos
no pos' --loop state
Entry = Track2
Exit = Track1
no Green
no Green' --loop state
inv9[]
}}}
}
run test14 for 3 but 1 steps
pred test15 {
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
inv9[]
}
}
run test15 for 3 but 1 steps
pred test16 {
some disj Track1, Track0, Junction0: Track {some disj Train1, Train0: Train {
Junction = Junction0
Track = Track0 + Track1 + Junction0
prox = Junction0->Track0 + Junction0->Track1
no signal
no Signal
no Signal' --loop state
Train = Train0 + Train1
no pos
no pos' --loop state
Entry = Junction0
Exit = Track0 + Track1
no Green
no Green' --loop state
inv9[]
}}
}
run test16 for 3 but 1 steps
pred test17 {
some disj Track0: Track {some disj Train0: Train {
no Junction
no Junction'
no Junction'' --loop state
Track = Track0
no prox
no signal
no Signal
no Signal'
no Signal'' --loop state
Train = Train0
pos = Train0->Track0
no pos'
pos'' = Train0->Track0 --loop state
Entry = Track0
Exit = Track0
no Green
no Green'
no Green'' --loop state
inv9[]
}}
}
run test17 for 3 but 2 steps
pred test18 {
some disj Track2, Track1, Track0: Track {some disj Train0: Train {
no Junction
no Junction'
no Junction'' --loop state
Track = Track0 + Track1 + Track2
prox = Track1->Track0
no signal
no Signal
no Signal'
no Signal'' --loop state
Train = Train0
pos = Train0->Track1
no pos'
pos'' = Train0->Track1 --loop state
Entry = Track1 + Track2
Exit = Track0 + Track2
no Green
no Green'
no Green'' --loop state
inv9[]
}}
}
run test18 for 3 but 2 steps
pred test19 {
some disj Track0, Junction0, Junction1: Track {some disj Signal0, Signal1, Signal2: Signal {some disj Train1, Train0: Train {
Junction = Junction0 + Junction1
Track = Track0 + Junction0 + Junction1
prox = Track0->Junction0 + Junction1->Track0 + Junction1->Junction0
signal = Track0->Signal2 + Junction0->Signal1 + Junction1->Signal0
Signal = Signal0 + Signal1 + Signal2
Train = Train0 + Train1
no pos
pos' = Train0->Junction1 + Train1->Junction1
pos'' = Train0->Junction1 + Train1->Junction1 --loop state
Entry = Junction1
Exit = Junction0
Green = Signal1
no Green'
no Green'' --loop state
inv9[]
}}}
}
run test19 for 3 but 2 steps
pred test20 {
some disj Track1, Junction0, Track0: Track {some disj Signal0, Signal1: Signal {some disj Train0: Train {
Junction = Junction0
Track = Junction0 + Track0 + Track1
prox = Track0->Junction0 + Track1->Junction0
signal = Track0->Signal1 + Track1->Signal0
Signal = Signal0 + Signal1
Train = Train0
pos = Train0->Track0
no pos'
pos'' = Train0->Track0 --loop state
Entry = Track0 + Track1
Exit = Junction0
Green = Signal1
no Green'
Green'' = Signal1 --loop state
inv9[]
}}}
}
run test20 for 3 but 2 steps
pred test21 {
some disj Track2, Track1, Track0: Track {some disj Signal0, Signal1, Signal2: Signal {some disj Train1, Train0: Train {
no Junction
no Junction'
no Junction'' --loop state
Track = Track0 + Track1 + Track2
prox = Track1->Track0
signal = Track0->Signal2 + Track1->Signal1 + Track2->Signal0
Signal = Signal0 + Signal1 + Signal2
Train = Train0 + Train1
pos = Train0->Track1 + Train1->Track1
no pos'
pos'' = Train0->Track1 + Train1->Track1 --loop state
Entry = Track1 + Track2
Exit = Track0 + Track2
Green = Signal1
no Green'
Green'' = Signal1 --loop state
inv9[]
}}}
}
run test21 for 3 but 2 steps
pred test22 {
some disj Track2, Track1, Track0: Track {some disj Train0: Train {
no Junction
no Junction'
no Junction'' --loop state
Track = Track0 + Track1 + Track2
prox = Track1->Track0
no signal
no Signal
no Signal'
no Signal'' --loop state
Train = Train0
no pos
pos' = Train0->Track1
no pos'' --loop state
Entry = Track1 + Track2
Exit = Track0 + Track2
no Green
no Green'
no Green'' --loop state
inv9[]
}}
}
run test22 for 3 but 2 steps
pred test23 {
some disj Track2, Track1, Track0: Track {some disj Signal0, Signal1: Signal {some disj Train0: Train {
no Junction
no Junction'
no Junction'' --loop state
Track = Track0 + Track1 + Track2
no prox
signal = Track1->Signal1 + Track2->Signal0
Signal = Signal0 + Signal1
Train = Train0
no pos
pos' = Train0->Track0
pos'' = Train0->Track0 --loop state
Entry = Track0 + Track1 + Track2
Exit = Track0 + Track1 + Track2
Green = Signal0
no Green'
no Green'' --loop state
inv9[]
}}}
}
run test23 for 3 but 2 steps
pred test24 {
some disj Track1, Junction0, Track0: Track {some disj Signal0, Signal1: Signal {some disj Train0: Train {
Junction = Junction0
Track = Junction0 + Track0 + Track1
prox = Track0->Junction0 + Track1->Junction0
signal = Track0->Signal1 + Track1->Signal0
Signal = Signal0 + Signal1
Train = Train0
pos = Train0->Track1
no pos'
pos'' = Train0->Track1 --loop state
Entry = Track0 + Track1
Exit = Junction0
Green = Signal1
no Green'
Green'' = Signal1 --loop state
inv9[]
}}}
}
run test24 for 3 but 2 steps
pred test25 {
some disj Track2, Track1, Track0: Track {some disj Signal0, Signal1: Signal {some disj Train2, Train1, Train0: Train {
no Junction
no Junction' --loop state
Track = Track0 + Track1 + Track2
prox = Track0->Track1 + Track2->Track0
signal = Track1->Signal1 + Track2->Signal0
Signal = Signal0 + Signal1
Train = Train0 + Train1 + Train2
pos = Train0->Track2 + Train1->Track2 + Train2->Track2
pos' = Train0->Track2 + Train1->Track2 + Train2->Track2 --loop state
Entry = Track2
Exit = Track1
no Green
no Green' --loop state
inv9[]
}}}
}
run test25 for 3 but 1 steps
pred test26 {
some disj Track0, Junction0, Junction1: Track {some disj Signal0, Signal1, Signal2: Signal {some disj Train2, Train1, Train0: Train {
Junction = Junction0 + Junction1
Track = Track0 + Junction0 + Junction1
prox = Track0->Junction0 + Junction1->Track0 + Junction1->Junction0
signal = Track0->Signal2 + Junction0->Signal1 + Junction1->Signal0
Signal = Signal0 + Signal1 + Signal2
Train = Train0 + Train1 + Train2
pos = Train0->Junction1 + Train1->Junction1 + Train2->Junction1
pos' = Train0->Junction1 + Train1->Junction1 + Train2->Junction1 --loop state
Entry = Junction1
Exit = Junction0
no Green
no Green' --loop state
inv9[]
}}}
}
run test26 for 3 but 1 steps
pred test27 {
some disj Track1, Track0: Track {some disj Signal0, Signal1: Signal {some disj Train0: Train {
no Junction
no Junction'
no Junction'' --loop state
Track = Track0 + Track1
no prox
signal = Track0->Signal1 + Track1->Signal0
Signal = Signal0 + Signal1
Train = Train0
no pos
pos' = Train0->Track1
no pos'' --loop state
Entry = Track0 + Track1
Exit = Track0 + Track1
Green = Signal1
no Green'
Green'' = Signal1 --loop state
inv9[]
}}}
}
run test27 for 3 but 2 steps
pred test28 {
some disj Track2, Track1, Track0: Track {some disj Signal0, Signal1: Signal {some disj Train0: Train {
no Junction
no Junction'
no Junction'' --loop state
Track = Track0 + Track1 + Track2
no prox
signal = Track1->Signal1 + Track2->Signal0
Signal = Signal0 + Signal1
Train = Train0
no pos
pos' = Train0->Track0
pos'' = Train0->Track0 --loop state
Entry = Track0 + Track1 + Track2
Exit = Track0 + Track1 + Track2
no Green
no Green'
no Green'' --loop state
inv9[]
}}}
}
run test28 for 3 but 2 steps
pred test29 {
some disj Track1, Junction0, Track0: Track {some disj Signal0, Signal1: Signal {some disj Train1, Train0: Train {
Junction = Junction0
Track = Junction0 + Track0 + Track1
prox = Track0->Junction0 + Track1->Junction0
signal = Track0->Signal1 + Track1->Signal0
Signal = Signal0 + Signal1
Train = Train0 + Train1
pos = Train0->Track0 + Train1->Track0
no pos'
pos'' = Train0->Track0 + Train1->Track0 --loop state
Entry = Track0 + Track1
Exit = Junction0
Green = Signal0
no Green'
Green'' = Signal0 --loop state
inv9[]
}}}
}
run test29 for 3 but 2 steps
pred test30 {
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
inv9[]
}}}
}
run test30 for 3 but 1 steps
pred test31 {
some disj Track1, Track0: Track {some disj Signal0, Signal1: Signal {some disj Train1, Train0: Train {
no Junction
no Junction'
no Junction'' --loop state
Track = Track0 + Track1
no prox
signal = Track0->Signal1 + Track1->Signal0
Signal = Signal0 + Signal1
Train = Train0 + Train1
pos = Train0->Track0 + Train1->Track0
no pos'
pos'' = Train0->Track0 + Train1->Track0 --loop state
Entry = Track0 + Track1
Exit = Track0 + Track1
Green = Signal0
no Green'
Green'' = Signal0 --loop state
inv9[]
}}}
}
run test31 for 3 but 2 steps
pred test32 {
some disj Track0: Track {some disj Train0: Train {
no Junction
no Junction'
no Junction'' --loop state
Track = Track0
no prox
no signal
no Signal
no Signal'
no Signal'' --loop state
Train = Train0
no pos
pos' = Train0->Track0
no pos'' --loop state
Entry = Track0
Exit = Track0
no Green
no Green'
no Green'' --loop state
inv9[]
}}
}
run test32 for 3 but 2 steps
pred test33 {
some disj Track2, Track1, Track0: Track {some disj Signal0, Signal1: Signal {some disj Train2, Train1, Train0: Train {
no Junction
no Junction'
no Junction'' --loop state
Track = Track0 + Track1 + Track2
no prox
signal = Track1->Signal1 + Track2->Signal0
Signal = Signal0 + Signal1
Train = Train0 + Train1 + Train2
no pos
pos' = Train0->Track2 + Train1->Track1 + Train2->Track0
pos'' = Train0->Track2 + Train1->Track1 + Train2->Track0 --loop state
Entry = Track0 + Track1 + Track2
Exit = Track0 + Track1 + Track2
Green = Signal0
no Green'
no Green'' --loop state
inv9[]
}}}
}
run test33 for 3 but 2 steps
pred test34 {
some disj Track1, Junction0, Track0: Track {some disj Signal0, Signal1: Signal {some disj Train2, Train1, Train0: Train {
Junction = Junction0
Track = Junction0 + Track0 + Track1
prox = Track0->Junction0 + Track1->Junction0
signal = Track0->Signal1 + Track1->Signal0
Signal = Signal0 + Signal1
Train = Train0 + Train1 + Train2
pos = Train1->Track0 + Train2->Track0
pos' = Train0->Track0
pos'' = Train1->Track0 + Train2->Track0 --loop state
Entry = Track0 + Track1
Exit = Junction0
Green = Signal1
no Green'
Green'' = Signal1 --loop state
inv9[]
}}}
}
run test34 for 3 but 2 steps
pred test35 {
some disj Track2, Track1, Track0: Track {some disj Signal0, Signal1: Signal {some disj Train1, Train0: Train {
no Junction
no Junction'
no Junction''
no Junction''' --loop state
Track = Track0 + Track1 + Track2
prox = Track0->Track1 + Track2->Track0
signal = Track0->Signal1 + Track1->Signal0
Signal = Signal0 + Signal1
Train = Train0 + Train1
pos = Train0->Track1 + Train1->Track1
pos' = Train1->Track2
pos'' = Train0->Track2
pos''' = Train0->Track1 + Train1->Track1 --loop state
Entry = Track2
Exit = Track1
Green = Signal0
Green' = Signal0
no Green''
Green''' = Signal0 --loop state
inv9[]
}}}
}
run test35 for 3 but 3 steps
pred test36 {
some disj Track2, Track1, Track0: Track {some disj Signal0, Signal1: Signal {some disj Train1, Train0: Train {
no Junction
no Junction'
no Junction'' --loop state
Track = Track0 + Track1 + Track2
no prox
signal = Track1->Signal1 + Track2->Signal0
Signal = Signal0 + Signal1
Train = Train0 + Train1
pos = Train0->Track1 + Train1->Track1
no pos'
pos'' = Train0->Track1 + Train1->Track1 --loop state
Entry = Track0 + Track1 + Track2
Exit = Track0 + Track1 + Track2
Green = Signal1
no Green'
Green'' = Signal1 --loop state
inv9[]
}}}
}
run test36 for 3 but 2 steps
pred test37 {
some disj Track2, Track1, Track0: Track {some disj Signal0, Signal1: Signal {some disj Train0: Train {
no Junction
no Junction'
no Junction'' --loop state
Track = Track0 + Track1 + Track2
prox = Track1->Track0
signal = Track1->Signal1 + Track2->Signal0
Signal = Signal0 + Signal1
Train = Train0
no pos
pos' = Train0->Track2
no pos'' --loop state
Entry = Track1 + Track2
Exit = Track0 + Track2
Green = Signal1
no Green'
Green'' = Signal1 --loop state
inv9[]
}}}
}
run test37 for 3 but 2 steps
pred test38 {
some disj Track2, Track1, Track0: Track {some disj Signal0, Signal1: Signal {some disj Train2, Train1, Train0: Train {
no Junction
no Junction'
no Junction'' --loop state
Track = Track0 + Track1 + Track2
no prox
signal = Track1->Signal1 + Track2->Signal0
Signal = Signal0 + Signal1
Train = Train0 + Train1 + Train2
pos = Train1->Track1 + Train2->Track1
pos' = Train0->Track1
pos'' = Train1->Track1 + Train2->Track1 --loop state
Entry = Track0 + Track1 + Track2
Exit = Track0 + Track1 + Track2
Green = Signal1
no Green'
Green'' = Signal1 --loop state
inv9[]
}}}
}
run test38 for 3 but 2 steps
pred test39 {
some disj Track2, Track1, Track0: Track {some disj Signal0, Signal1: Signal {some disj Train2, Train1, Train0: Train {
no Junction
no Junction'
no Junction''
no Junction''' --loop state
Track = Track0 + Track1 + Track2
prox = Track1->Track0
signal = Track0->Signal1 + Track1->Signal0
Signal = Signal0 + Signal1
Train = Train0 + Train1 + Train2
pos = Train0->Track0 + Train1->Track0 + Train2->Track0
no pos'
pos'' = Train0->Track1 + Train1->Track1 + Train2->Track1
pos''' = Train0->Track0 + Train1->Track0 + Train2->Track0 --loop state
Entry = Track1 + Track2
Exit = Track0 + Track2
Green = Signal1
Green' = Signal1
no Green''
Green''' = Signal1 --loop state
inv9[]
}}}
}
run test39 for 3 but 3 steps
pred test40 {
some disj Track1, Track0: Track {some disj Signal0, Signal1: Signal {some disj Train2, Train1, Train0: Train {
no Junction
no Junction'
no Junction'' --loop state
Track = Track0 + Track1
no prox
signal = Track0->Signal1 + Track1->Signal0
Signal = Signal0 + Signal1
Train = Train0 + Train1 + Train2
pos = Train0->Track0 + Train1->Track0 + Train2->Track0
no pos'
no pos'' --loop state
Entry = Track0 + Track1
Exit = Track0 + Track1
Green = Signal0
no Green'
no Green'' --loop state
inv9[]
}}}
}
run test40 for 3 but 2 steps
pred test41 {
some disj Track2, Track1, Track0: Track {some disj Signal0, Signal1, Signal2: Signal {some disj Train1, Train0: Train {
no Junction
no Junction'
no Junction'' --loop state
Track = Track0 + Track1 + Track2
prox = Track1->Track0
signal = Track0->Signal2 + Track1->Signal1 + Track2->Signal0
Signal = Signal0 + Signal1 + Signal2
Train = Train0 + Train1
pos = Train0->Track1 + Train1->Track1
no pos'
pos'' = Train0->Track1 + Train1->Track1 --loop state
Entry = Track1 + Track2
Exit = Track0 + Track2
Green = Signal0 + Signal2
no Green'
Green'' = Signal0 + Signal2 --loop state
inv9[]
}}}
}
run test41 for 3 but 2 steps
pred test42 {
some disj Track1, Track0: Track {some disj Signal0, Signal1: Signal {some disj Train2, Train1, Train0: Train {
no Junction
no Junction'
no Junction''
no Junction''' --loop state
Track = Track0 + Track1
prox = Track1->Track0
signal = Track0->Signal1 + Track1->Signal0
Signal = Signal0 + Signal1
Train = Train0 + Train1 + Train2
pos = Train0->Track0 + Train1->Track0 + Train2->Track0
pos' = Train2->Track1
pos'' = Train0->Track1 + Train1->Track1
pos''' = Train0->Track0 + Train1->Track0 + Train2->Track0 --loop state
Entry = Track1
Exit = Track0
Green = Signal0
Green' = Signal0
no Green''
Green''' = Signal0 --loop state
inv9[]
}}}
}
run test42 for 3 but 3 steps
pred test43 {
some disj Track1, Track0: Track {some disj Signal0, Signal1: Signal {some disj Train2, Train1, Train0: Train {
no Junction
no Junction'
no Junction'' --loop state
Track = Track0 + Track1
no prox
signal = Track0->Signal1 + Track1->Signal0
Signal = Signal0 + Signal1
Train = Train0 + Train1 + Train2
pos = Train1->Track0 + Train2->Track0
pos' = Train0->Track0
pos'' = Train1->Track0 + Train2->Track0 --loop state
Entry = Track0 + Track1
Exit = Track0 + Track1
Green = Signal1
no Green'
Green'' = Signal1 --loop state
inv9[]
}}}
}
run test43 for 3 but 2 steps
pred test44 {
some disj Track1, Track0, Junction0: Track {some disj Signal0, Signal1: Signal {some disj Train1, Train0: Train {
Junction = Junction0
Track = Track0 + Track1 + Junction0
prox = Junction0->Track0 + Junction0->Track1
signal = Track1->Signal1 + Junction0->Signal0
Signal = Signal0 + Signal1
Train = Train0 + Train1
pos = Train0->Track1 + Train1->Track1
pos' = Train0->Junction0 + Train1->Junction0
no pos''
no pos''' --loop state
Entry = Junction0
Exit = Track0 + Track1
no Green
no Green'
no Green''
no Green''' --loop state
inv9[]
}}}
}
run test44 for 3 but 3 steps
pred test45 {
some disj Track2, Track1, Track0: Track {some disj Train2, Train1, Train0: Train {
no Junction
no Junction'
no Junction''
no Junction''' --loop state
Track = Track0 + Track1 + Track2
prox = Track1->Track0
no signal
no Signal
no Signal'
no Signal''
no Signal''' --loop state
Train = Train0 + Train1 + Train2
pos = Train0->Track2 + Train1->Track1 + Train2->Track0
pos' = Train1->Track0 + Train2->Track2
no pos''
pos''' = Train0->Track2 + Train1->Track1 + Train2->Track0 --loop state
Entry = Track1 + Track2
Exit = Track0 + Track2
no Green
no Green'
no Green''
no Green''' --loop state
inv9[]
}}
}
run test45 for 3 but 3 steps
pred test46 {
some disj Track1, Junction0, Track0: Track {some disj Signal0, Signal1, Signal2: Signal {some disj Train2, Train1, Train0: Train {
Junction = Junction0
Track = Junction0 + Track0 + Track1
prox = Track0->Junction0 + Track1->Junction0
signal = Junction0->Signal2 + Track0->Signal1 + Track1->Signal0
Signal = Signal0 + Signal1 + Signal2
Train = Train0 + Train1 + Train2
pos = Train1->Track0 + Train2->Track0
pos' = Train0->Track0
pos'' = Train1->Track0 + Train2->Track0 --loop state
Entry = Track0 + Track1
Exit = Junction0
Green = Signal0 + Signal2
no Green'
Green'' = Signal0 + Signal2 --loop state
inv9[]
}}}
}
run test46 for 3 but 2 steps
pred test47 {
some disj Track2, Track1, Track0: Track {some disj Signal0, Signal1: Signal {some disj Train1, Train0: Train {
no Junction
no Junction' --loop state
Track = Track0 + Track1 + Track2
prox = Track0->Track1 + Track2->Track0
signal = Track0->Signal1 + Track1->Signal0
Signal = Signal0 + Signal1
Train = Train0 + Train1
no pos
no pos' --loop state
Entry = Track2
Exit = Track1
no Green
no Green' --loop state
inv9[]
}}}
}
run test47 for 3 but 1 steps
pred test48 {
some disj Track1, Track0: Track {some disj Signal0, Signal1: Signal {some disj Train2, Train1, Train0: Train {
no Junction
no Junction'
no Junction'' --loop state
Track = Track0 + Track1
no prox
signal = Track0->Signal1 + Track1->Signal0
Signal = Signal0 + Signal1
Train = Train0 + Train1 + Train2
pos = Train1->Track0 + Train2->Track0
pos' = Train0->Track0
pos'' = Train1->Track0 + Train2->Track0 --loop state
Entry = Track0 + Track1
Exit = Track0 + Track1
Green = Signal0
no Green'
Green'' = Signal0 --loop state
inv9[]
}}}
}
run test48 for 3 but 2 steps
pred test49 {
some disj Track2, Track1, Track0: Track {some disj Signal0, Signal1: Signal {some disj Train2, Train1, Train0: Train {
no Junction
no Junction'
no Junction'' --loop state
Track = Track0 + Track1 + Track2
no prox
signal = Track1->Signal1 + Track2->Signal0
Signal = Signal0 + Signal1
Train = Train0 + Train1 + Train2
pos = Train1->Track1 + Train2->Track1
pos' = Train0->Track2
pos'' = Train1->Track1 + Train2->Track1 --loop state
Entry = Track0 + Track1 + Track2
Exit = Track0 + Track1 + Track2
Green = Signal0
no Green'
Green'' = Signal0 --loop state
inv9[]
}}}
}
run test49 for 3 but 2 steps
pred test50 {
some disj Track2, Track1, Track0: Track {some disj Train2, Train1, Train0: Train {
no Junction
no Junction'
no Junction'' --loop state
Track = Track0 + Track1 + Track2
prox = Track1->Track0
no signal
no Signal
no Signal'
no Signal'' --loop state
Train = Train0 + Train1 + Train2
pos = Train0->Track2 + Train1->Track1 + Train2->Track1
no pos'
pos'' = Train0->Track2 + Train1->Track1 + Train2->Track1 --loop state
Entry = Track1 + Track2
Exit = Track0 + Track2
no Green
no Green'
no Green'' --loop state
inv9[]
}}
}
run test50 for 3 but 2 steps
pred test51 {
some disj Track2, Track1, Track0: Track {some disj Signal0, Signal1: Signal {some disj Train2, Train1, Train0: Train {
no Junction
no Junction'
no Junction''
no Junction''' --loop state
Track = Track0 + Track1 + Track2
prox = Track1->Track0
signal = Track1->Signal1 + Track2->Signal0
Signal = Signal0 + Signal1
Train = Train0 + Train1 + Train2
pos = Train0->Track1 + Train1->Track1 + Train2->Track1
pos' = Train2->Track2
pos'' = Train0->Track0 + Train1->Track0
pos''' = Train0->Track1 + Train1->Track1 + Train2->Track1 --loop state
Entry = Track1 + Track2
Exit = Track0 + Track2
Green = Signal0
Green' = Signal0
no Green''
Green''' = Signal0 --loop state
inv9[]
}}}
}
run test51 for 3 but 3 steps
pred test52 {
some disj Track0: Track {some disj Signal0: Signal {some disj Train1, Train0: Train {
no Junction
no Junction' --loop state
Track = Track0
no prox
signal = Track0->Signal0
Signal = Signal0
Train = Train0 + Train1
no pos
no pos' --loop state
Entry = Track0
Exit = Track0
no Green
no Green' --loop state
inv9[]
}}}
}
run test52 for 3 but 1 steps
pred test53 {
some disj Track2, Track1, Track0: Track {some disj Signal0, Signal1, Signal2: Signal {some disj Train2, Train1, Train0: Train {
no Junction
no Junction'
no Junction'' --loop state
Track = Track0 + Track1 + Track2
prox = Track1->Track0
signal = Track0->Signal2 + Track1->Signal1 + Track2->Signal0
Signal = Signal0 + Signal1 + Signal2
Train = Train0 + Train1 + Train2
pos = Train1->Track1 + Train2->Track1
pos' = Train0->Track0
pos'' = Train1->Track1 + Train2->Track1 --loop state
Entry = Track1 + Track2
Exit = Track0 + Track2
Green = Signal1
no Green'
Green'' = Signal1 --loop state
inv9[]
}}}
}
run test53 for 3 but 2 steps
pred test54 {
some disj Track0, Junction0, Junction1: Track {some disj Signal0, Signal1, Signal2: Signal {some disj Train2, Train1, Train0: Train {
Junction = Junction0 + Junction1
Track = Track0 + Junction0 + Junction1
prox = Track0->Junction0 + Junction1->Track0 + Junction1->Junction0
signal = Track0->Signal2 + Junction0->Signal1 + Junction1->Signal0
Signal = Signal0 + Signal1 + Signal2
Train = Train0 + Train1 + Train2
pos = Train0->Junction1 + Train1->Junction0 + Train2->Junction0
no pos'
pos'' = Train0->Junction1 + Train1->Junction0 + Train2->Junction0 --loop state
Entry = Junction1
Exit = Junction0
Green = Signal1
no Green'
Green'' = Signal1 --loop state
inv9[]
}}}
}
run test54 for 3 but 2 steps
pred test55 {
some disj Track2, Track1, Track0: Track {some disj Signal0, Signal1: Signal {some disj Train2, Train1, Train0: Train {
no Junction
no Junction'
no Junction'' --loop state
Track = Track0 + Track1 + Track2
prox = Track1->Track0
signal = Track0->Signal1 + Track1->Signal0
Signal = Signal0 + Signal1
Train = Train0 + Train1 + Train2
pos = Train1->Track1 + Train2->Track1
pos' = Train0->Track0
pos'' = Train1->Track1 + Train2->Track1 --loop state
Entry = Track1 + Track2
Exit = Track0 + Track2
Green = Signal1
no Green'
Green'' = Signal1 --loop state
inv9[]
}}}
}
run test55 for 3 but 2 steps
pred test56 {
some disj Track2, Track1, Track0: Track {some disj Signal0, Signal1: Signal {some disj Train2, Train1, Train0: Train {
no Junction
no Junction'
no Junction'' --loop state
Track = Track0 + Track1 + Track2
prox = Track1->Track0
signal = Track0->Signal1 + Track1->Signal0
Signal = Signal0 + Signal1
Train = Train0 + Train1 + Train2
pos = Train1->Track1 + Train2->Track1
pos' = Train0->Track1
pos'' = Train1->Track1 + Train2->Track1 --loop state
Entry = Track1 + Track2
Exit = Track0 + Track2
Green = Signal1
no Green'
Green'' = Signal1 --loop state
inv9[]
}}}
}
run test56 for 3 but 2 steps
pred test57 {
some disj Track1, Junction0, Track0: Track {some disj Signal0, Signal1: Signal {some disj Train0: Train {
Junction = Junction0
Track = Junction0 + Track0 + Track1
prox = Track0->Junction0 + Track1->Junction0
signal = Track0->Signal1 + Track1->Signal0
Signal = Signal0 + Signal1
Train = Train0
no pos
pos' = Train0->Track1
no pos'' --loop state
Entry = Track0 + Track1
Exit = Junction0
Green = Signal1
no Green'
Green'' = Signal1 --loop state
inv9[]
}}}
}
run test57 for 3 but 2 steps
