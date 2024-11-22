sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv2{
all s:State | Init in s
}