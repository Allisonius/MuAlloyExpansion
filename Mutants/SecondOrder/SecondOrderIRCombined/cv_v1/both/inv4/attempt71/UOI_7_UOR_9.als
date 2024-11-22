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
ids: (one Id),
source: (one Source)
}
pred inv4[] {
(all w1,w2: (one Work) {
(all u: (one User) {
((((w1 + w2) in (lone (u.visible))) && ((w1 + w2) in (u.profile))) => ((w1.ids) = (w2.ids)))
})
})
}