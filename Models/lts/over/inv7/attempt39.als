sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv7{
all s : State | Init in s.trans[Event] + s.trans[Event].trans[Event] + s.trans[Event].trans[Event].trans[Event]
}