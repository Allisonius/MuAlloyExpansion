sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv5{
all x, y, z : State | some e : Event | x->e->y in trans implies y->e->x in trans
}