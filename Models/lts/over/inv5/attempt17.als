sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv5{
all s,s1:State|  s.trans in s1.trans
}