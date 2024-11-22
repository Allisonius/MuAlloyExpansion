sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv4{
all s: State | s in Init or Init in trans.s.Event or (some trans.s.Event)
}