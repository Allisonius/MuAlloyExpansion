sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv3{
all s:State| some s2:State | no ((s.trans).s2) - Event
}