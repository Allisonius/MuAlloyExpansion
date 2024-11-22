module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(lone v: (one Node) {
(some ((v.(~adj)) + v))
})
}