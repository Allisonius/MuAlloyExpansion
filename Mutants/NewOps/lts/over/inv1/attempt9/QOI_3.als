module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv1[] {
(no var123456 : State { (let k = (var123456.trans) {
(iden in (k.(~k)))
})})
}





