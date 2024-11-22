module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv2[] {
(one n: (one Node) {
(no (adj :> n))
})
}