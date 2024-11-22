module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(lone n: (one Node) {
((lone adj) && (Node in (n.(^adj))))
})
}