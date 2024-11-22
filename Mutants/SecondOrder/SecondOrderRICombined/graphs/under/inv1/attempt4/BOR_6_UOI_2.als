module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
((Node.(*adj)) !in ((~adj).Node))
}