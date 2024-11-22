sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv4{
let t = { s2, s1 : State | some e : Event | s1->e->s2 in trans } | State in Init.(^t)
}