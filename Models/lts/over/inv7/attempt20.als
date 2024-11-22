sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv7{
all s: Event.(State.trans) | s in ^{x,y: State | some x.trans.y}.Init
}