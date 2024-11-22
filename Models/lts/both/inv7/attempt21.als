sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv7{
all s: State | s in {x, y: State | some (x.trans).y}.s
}