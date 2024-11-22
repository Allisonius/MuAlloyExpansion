sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv2{
no disj i,j : Init { }
}