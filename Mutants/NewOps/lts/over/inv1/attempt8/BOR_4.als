module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv1[] {
(let r = (State.trans) {
(iden != ((~r).r))
})
}





