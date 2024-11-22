sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv5{
all s,r :State | (r.trans).s = (s.trans).r
}