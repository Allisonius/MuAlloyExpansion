module unknown
open util/integer [] as integer
abstract sig Source {}
sig User extends Source {
profile: (set Work),
visible: (set Work)
}
sig Institution extends Source {}
sig Id {}
sig Work {
ids: (some Id),
source: (one Source)
}
pred inv3[] {
(((((Work)) in (Source.profile)) && (((Work)) in (Source.profile)) && (((Id)) in (((Work)).ids))) => (((Id)) !in (((Work)).ids)))
}





