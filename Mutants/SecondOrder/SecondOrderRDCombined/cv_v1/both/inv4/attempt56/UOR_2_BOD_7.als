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
(all w1,w2: (one Work) {
(((w1 != w2) && (w2 in (User.visible))) => (no ((w1.ids) & (w2.ids))))
})
}