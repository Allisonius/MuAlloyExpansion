sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv6{
some s : State | Event in s.trans.State
}