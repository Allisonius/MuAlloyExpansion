sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv4{
all s : Init | State in s.^(s->Event.(s.trans))
}