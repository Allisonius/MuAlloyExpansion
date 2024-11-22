sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv7{
all s: Event.(State.trans) | s in s.^{x,y: State | some y.trans.x}
}