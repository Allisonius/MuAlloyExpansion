module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(let st = (trans.Event) {
(((~st).st) in iden)
})
}





