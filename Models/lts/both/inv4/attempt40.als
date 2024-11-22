sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv4{
all s1 : (State-Init) |  one (Init.trans).s1
}