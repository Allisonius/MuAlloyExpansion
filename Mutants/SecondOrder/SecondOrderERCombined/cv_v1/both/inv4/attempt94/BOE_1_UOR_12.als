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
source: (some Source)
}
pred inv4[] {
(all w1,w2: (one Work) {
(all u: (one User) {
((no ((w1.ids) & (w2.ids))) => (((w1.source) = (w2.source)) && ((w1 + w2) in (u.visible)) && ((w1 + w2) in (u.profile))))
})
})
}