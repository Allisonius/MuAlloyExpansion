sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv3{
all s : State {
    	all disj e1,e2 : Event | some s.trans[e1] implies no s.trans[e2]
    }
}