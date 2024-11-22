sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv5{
all x, y : State | x.trans = y.trans
}