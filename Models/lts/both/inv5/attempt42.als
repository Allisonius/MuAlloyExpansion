sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv5{
all disj s1, s2 : State | some e : Event | some e.(s1.trans) iff some e.(s2.trans)
}