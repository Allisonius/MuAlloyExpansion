sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv1{
always (all s: State | some s.trans.Event)
}