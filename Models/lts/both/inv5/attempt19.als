sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv5{
all x, y : State | some x.trans & y.trans
}