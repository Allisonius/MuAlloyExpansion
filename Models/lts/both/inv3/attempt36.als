sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv3{
Init.^{x,y: State | some (x.trans).y} = State
}