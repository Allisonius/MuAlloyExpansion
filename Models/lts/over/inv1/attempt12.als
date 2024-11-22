sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv1{
all x : State | some x.trans.Event
}