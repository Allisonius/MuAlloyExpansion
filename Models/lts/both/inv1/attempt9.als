sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv1{
trans in State some -> Event -> State
}