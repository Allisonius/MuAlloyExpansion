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
(all u: (one User),i: (one Id),i1: (one Id) {
(((((u.visible).ids) in i) && (i1 in ((u.visible).ids))) => (i = i1))
})
}