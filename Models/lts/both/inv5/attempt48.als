sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv5{
all disj s1, s2 : State | some e : Event | one e.(s1.trans) implies one e.(s2.trans) else no e.(s1.trans)
}