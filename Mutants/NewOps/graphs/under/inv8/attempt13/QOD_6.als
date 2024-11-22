module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(((((Node)) != ((Node))) && (((Node)) != ((Node))) && (((Node)) != ((Node)))) => (((((Node)) in (adj.((Node)))) && (((Node)) in (((Node)).adj))) => (((Node)) in (((Node)).adj))))
}





