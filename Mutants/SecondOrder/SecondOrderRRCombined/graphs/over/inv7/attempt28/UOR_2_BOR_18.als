module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv7[] {
(all n: (one Node),x: (one Node) {
((n in (x.(^adj))) && (x = (n.(^adj))))
})
}