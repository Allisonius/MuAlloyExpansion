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
pred inv3[] {
(all w1,w2: (one Work) {
(some u: (one User) {
((once ((w1 != w2) && ((w1 + w2) in (u.profile)) && ((w1.source) = (w2.source)))) => (no ((w1.ids) & (w2.ids))))
})
})
}