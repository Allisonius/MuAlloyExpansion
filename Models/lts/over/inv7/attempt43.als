sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv7{
let trans_bin = {s1, s2 : State | some s1.trans.s2} |
    all s : State | s in (Init.^trans_bin) implies Init in s.^trans_bin
}