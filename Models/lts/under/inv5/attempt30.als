sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv5{
all x, y : State | all e : Event | some x->e->y implies some y->e->y
}