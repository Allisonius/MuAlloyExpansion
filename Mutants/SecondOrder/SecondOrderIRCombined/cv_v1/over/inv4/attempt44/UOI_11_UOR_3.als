module unknown
open util/integer [] as integer
abstract sig Source {}
sig User extends Source {
profile: (some Work),
visible: (set Work)
}
sig Institution extends Source {}
sig Id {}
sig Work {
ids: (some Id),
source: (one Source)
}
pred inv4[] {
(all u: (one User),w1,w2: (one Work) {
(((w1 in (u.visible)) && (w2 in (one (u.visible)))) => ((no ((w1.ids) & (w2.ids))) && (((w1.source) = (w2.source)) || ((w1.source) != (w2.source)))))
})
}