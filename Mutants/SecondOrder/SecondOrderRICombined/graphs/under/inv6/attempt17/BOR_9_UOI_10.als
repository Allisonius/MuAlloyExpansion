module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
((lone Node) || (Node != ((Node.adj) + ((~adj).Node))))
}