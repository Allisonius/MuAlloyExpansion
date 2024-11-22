sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv5{
all s1, s2 : State | all e1, e2 : Event | some e1.(s1.trans) and some e2.(s2.trans) implies e1 = e2
}