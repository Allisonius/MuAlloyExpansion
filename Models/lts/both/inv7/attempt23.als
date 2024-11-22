sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv7{
((State - Init) -> State) in ^{ s, ns : State | s->Event->ns in trans }
}