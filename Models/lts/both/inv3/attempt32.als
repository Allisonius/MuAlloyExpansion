sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv3{
all s : State | some e : Event | lone (s->e)
}