sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv6{
all s:State | one (s.trans).State
}