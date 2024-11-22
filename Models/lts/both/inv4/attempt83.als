sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv4{
Init.(^{ s, ns : State | s->Event->ns in trans }) = State
}