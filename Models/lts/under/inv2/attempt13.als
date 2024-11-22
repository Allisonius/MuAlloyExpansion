sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv2{
all x, y : Init | some x implies x = y
}