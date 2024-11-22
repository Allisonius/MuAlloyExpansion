sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv3{
all s : State, e, e1 : Event | s->e in trans.State and s->e1 in trans.State => e = e1
}