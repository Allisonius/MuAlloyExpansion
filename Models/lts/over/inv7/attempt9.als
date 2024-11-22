sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv7{
let ss = {x,y: State | some x.trans.y} {
   		ss = ~ss 
  }
}