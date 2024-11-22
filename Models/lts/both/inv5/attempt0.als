sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv5{
some Event
}