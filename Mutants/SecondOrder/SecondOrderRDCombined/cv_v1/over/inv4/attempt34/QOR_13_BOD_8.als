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
pred inv4[] {
(no u: (one User),i: (one Id),i1: (one Id) {
(((i in ((u.visible).ids)) && (i1 in (u.ids))) => (i != i1))
})
}