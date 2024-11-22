sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv2{
lone Init
}