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
(all w1,w2: (one Work) {
(all u: (one User) {
(((w1 = w2) && ((w1 + w2) != (u.profile))) => ((w1 in (u.visible)) <=> (!(w2 in (u.visible)))))
})
})
}