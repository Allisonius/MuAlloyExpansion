sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv2{
one Init.trans
}