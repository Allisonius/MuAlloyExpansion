sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv4{
let adj ={x,y:State | some e:Event |x->e->y in trans} |
  
  some i:Init | (State) in i.*adj
}