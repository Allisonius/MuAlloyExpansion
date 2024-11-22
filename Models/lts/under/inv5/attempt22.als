sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv5{
all x : State, e : Event | some State->e->State
}