module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv5[] {
(some n: (one Node) {
(no (n.(adj.(~adj))))
})
}