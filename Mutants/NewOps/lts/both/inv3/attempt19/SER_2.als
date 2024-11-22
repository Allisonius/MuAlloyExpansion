module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(let k = (~(trans.Init)) {
((k.(~k)) in iden)
})
}





