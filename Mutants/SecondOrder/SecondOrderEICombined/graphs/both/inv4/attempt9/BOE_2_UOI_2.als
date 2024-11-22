module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(all a: (one Node) {
(historically ((a in (a.(^adj))) && (!(adj in (a->a)))))
})
}