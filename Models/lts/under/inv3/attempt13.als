sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv3{
all e : Event | trans.e in State->State
}