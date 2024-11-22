sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv7{
all x : State | some (*(~(x.trans))).Init
}