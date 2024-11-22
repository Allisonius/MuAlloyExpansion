sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv3{
all s : State, e : Event | lone (s->e & State.trans)
}