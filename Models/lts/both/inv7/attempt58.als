sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv7{
let adj ={x,y:State | some e:Event |x->e->y in trans} |
  
	all  s1,s2 :State |some e:Event |  (s1->e->s2) in trans implies ( Init in s2.*adj  )
}