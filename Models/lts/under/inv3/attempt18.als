sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv3{
all x : Event, y : State | lone y.trans.x
}