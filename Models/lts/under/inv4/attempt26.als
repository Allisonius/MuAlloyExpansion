sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv4{
all s: State | (s in Init and some trans.s.Event) or (some trans.s.Event)
}