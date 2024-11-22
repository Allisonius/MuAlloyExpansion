module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(some var123456 : State { (let st = (trans.var123456) {
(((~st).st) in iden)
})})
}





