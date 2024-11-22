sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv6{
all s:State | some s.trans.State
}