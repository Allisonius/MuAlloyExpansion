sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv2{
one s : State | no trans.s
}