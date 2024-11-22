module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(all var123456 : State { (let R = (var123456.trans) {
(iden in ((~R).R))
})})
}





