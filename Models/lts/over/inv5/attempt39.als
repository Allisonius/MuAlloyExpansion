sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv5{
all x: State, y: State | (x.trans).univ = (univ.trans).y
}