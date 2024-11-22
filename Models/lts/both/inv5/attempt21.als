sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv5{
all e:Event | Event->State in State.trans
}