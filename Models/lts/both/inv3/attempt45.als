sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv3{
all s:State | all disj e1, e2:Event | e1.(s.trans)!=e2.(s.trans)
}