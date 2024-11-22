sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv7{
all to: State | one Init and reachable[Init, to] => reachable[to, Init]
}

pred reachable[from, to: State]{
   	let rel = { s1, s2: State | some s1 -> Event -> s2 & trans } |
  		to in from.^rel
}