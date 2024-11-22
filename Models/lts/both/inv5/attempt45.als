sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv5{
all x, y : State | some e : Event | x->e->State in trans implies y->e->State in trans
}