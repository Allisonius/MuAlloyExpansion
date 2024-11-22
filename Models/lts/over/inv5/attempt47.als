sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv5{
all x, y : State | all e : Event | x->e->y in trans and y->e->y in trans
}