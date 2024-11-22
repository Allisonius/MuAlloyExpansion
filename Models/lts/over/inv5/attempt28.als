sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv5{
all s,s1:State|  no( s.trans  - s1.trans )
}