sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv3{
all s : State | all disj e1, e2 : State | e1 in Event.(s.trans) and e2 in Event.(s.trans) implies e1 = e2
}