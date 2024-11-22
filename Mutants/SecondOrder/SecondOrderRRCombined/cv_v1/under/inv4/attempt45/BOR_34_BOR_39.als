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
(all w1,w2: (one Work) {
(all u: (one User) {
(((some ((w1.ids) & (w2.ids))) && ((w1 + w2) = (u.visible)) && ((w1 + w2) != (u.profile))) => ((w1.source) = (w2.source)))
})
})
}