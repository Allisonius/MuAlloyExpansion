module unknown
open util/integer [] as integer
abstract sig Source {}
sig User extends Source {
profile: (set Work),
visible: (one Work)
}
sig Institution extends Source {}
sig Id {}
sig Work {
ids: (some Id),
source: (one Source)
}
pred inv4[] {
(all w1,w2: (one Work),u: (one User) {
(((w1 in (u.profile)) && (w2 in (u.profile)) && (w1 in u) && (w2 in (u.visible))) => (w1 = w2))
})
}