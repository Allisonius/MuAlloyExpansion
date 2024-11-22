module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(some v: (one Node) {
(some ((v.(~adj)) + v))
})
}