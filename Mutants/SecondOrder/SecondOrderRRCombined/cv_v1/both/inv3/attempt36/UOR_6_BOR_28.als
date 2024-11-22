module unknown
open util/integer [] as integer
abstract sig Source {}
sig User extends Source {
profile: (set Work),
visible: (some Work)
}
sig Institution extends Source {}
sig Id {}
sig Work {
ids: (some Id),
source: (one Source)
}
pred inv3[] {
(all w1,w2: (one Work),u: (one User) {
(((w1 in (u.profile)) && (w2 = (u.profile)) && ((w1.ids) = (w2.ids))) => (w1 = w2))
})
}