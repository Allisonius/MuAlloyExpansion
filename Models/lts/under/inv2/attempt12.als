sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv2{
all i1,i2 : Init | i1 = i2
}