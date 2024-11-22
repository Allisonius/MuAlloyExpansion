sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv4{
all e: Event | e.(Init.trans) = State
}