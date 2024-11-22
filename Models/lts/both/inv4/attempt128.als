sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv4{
all u : Init | State in (u.*{ x : State, y : State | some e : Event | x->e->y in trans}) + u
}