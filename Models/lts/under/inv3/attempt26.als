sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv3{
all e: Event | all s: State | lone s.trans.e
}