sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv5{
all x, y : State | some e : Event | some x->e implies some y->e
}