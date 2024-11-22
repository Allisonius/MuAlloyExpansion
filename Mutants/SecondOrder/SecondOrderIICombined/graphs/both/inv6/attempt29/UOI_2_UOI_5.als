module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(all x: (one Node) {
(historically ((x in (Node.(^adj))) || (x in ((~adj).Node))))
})
}