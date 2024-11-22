module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv7[] {
(one n: (one Node),x: (one Node) {
((n in (x.(^adj))) && (x in (n.(^adj))))
})
}