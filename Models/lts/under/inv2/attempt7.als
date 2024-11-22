sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv2{
all i,j : Init | i = j
}