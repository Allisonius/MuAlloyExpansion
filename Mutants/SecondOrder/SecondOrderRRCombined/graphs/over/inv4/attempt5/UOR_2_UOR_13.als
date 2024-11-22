module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv4[] {
(all v: (one Node) {
(some ((v.(~adj)) + v))
})
}