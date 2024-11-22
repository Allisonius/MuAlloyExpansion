sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv7{
all s: State | s in Init.^{s1, s2: State | some s1.trans.s2} implies Init in s.^{s1, s2: State | some s1.trans.s2}
}