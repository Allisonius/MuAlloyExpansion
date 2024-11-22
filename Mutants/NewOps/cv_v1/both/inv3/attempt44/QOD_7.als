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
(((((Work)) in (((User)).profile)) && (((Work)) in (((User)).profile)) && (no ((((Work)).ids) & (((Work)).ids))) && ((((Work)).source) = (((Work)).source))) => (((Work)) = ((Work))))
}





