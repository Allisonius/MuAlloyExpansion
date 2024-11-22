sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv3{
trans.State.Event = State
}