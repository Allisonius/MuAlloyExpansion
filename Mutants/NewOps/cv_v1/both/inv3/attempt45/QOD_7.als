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
(some u: (one User),s: (one Source) {
(((((Work)) != ((Work))) && ((((Work)) + ((Work))) in (u.profile)) && ((((Work)).source) = (((Work)).source))) => (no ((((Work)).ids) & (((Work)).ids))))
})
}





