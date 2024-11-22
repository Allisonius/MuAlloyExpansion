sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv3{
all s,k : State |one s.trans.k
}