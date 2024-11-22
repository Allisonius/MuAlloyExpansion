module unknown
open util/integer [] as integer
abstract sig Source {}
sig User extends Source {
profile: (one Work),
visible: (set Work)
}
sig Institution extends Source {}
sig Id {}
sig Work {
ids: (some Id),
source: (one Source)
}
pred inv4[] {
(all u: (one User),w1,w2: (one Work),i: (one Id) {
((historically ((w1 in (u.visible)) && (w2 in (u.visible)))) => ((w1->i) != (w2->i)))
})
}