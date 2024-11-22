module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
(one n: (one Node) {
((Node - n) in (n.(^adj)))
})
}