sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv7{
let adj = {x,y: State | some (x.trans).y} | all s:Init.^adj | Init in s.^adj
}