sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv3{
all e: Event, s:State |one s2: State | e->s2 in s.trans
}