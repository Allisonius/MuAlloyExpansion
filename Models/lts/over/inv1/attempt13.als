sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv1{
no s : State | s.trans.Event = none
}