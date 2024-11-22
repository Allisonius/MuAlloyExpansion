sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv4{
Init.*({x: State, y: State | some e: Event | x.trans[e] = y }) = State
}