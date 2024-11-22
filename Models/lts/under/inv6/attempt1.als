sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv6{
all e: Event | lone State.trans.e
}