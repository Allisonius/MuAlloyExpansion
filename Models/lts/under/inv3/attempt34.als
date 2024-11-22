sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv3{
all s : State, e, e1 : Event | s->e in State.trans and s->e1 in State.trans => e = e1
}