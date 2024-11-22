sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv3{
always (all s: State, e: Event | lone s.trans.e)
}