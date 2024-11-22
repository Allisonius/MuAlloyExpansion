module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(all x: (one State) {
((some (iden & (x.trans))) && (some ((*(~(x.trans))).Init)))
})
}





