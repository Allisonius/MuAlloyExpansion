sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv5{
all x, y : State | x->Event->y in trans implies y->Event->x in trans
}