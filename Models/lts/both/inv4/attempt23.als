sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv4{
all e : Event | State = Init.^(e.trans)
}