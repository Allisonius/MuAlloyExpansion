module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(let R = (Init.trans) {
(((~R).R) in iden)
})
}





