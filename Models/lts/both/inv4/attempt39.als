sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv4{
State in Init.^(State->State) and #State != 1
}