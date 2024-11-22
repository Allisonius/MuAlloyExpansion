sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv7{
inv4
}

pred inv4{
  Init.^({x: State, y: State | some (x.trans).y }) = State
}