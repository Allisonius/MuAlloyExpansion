module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv8[] {
(one n: (one Node) {
(some (n.(^adj)))
})
}