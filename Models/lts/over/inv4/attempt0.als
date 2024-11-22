sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv4{
some Init.trans.Event
}