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
source: (lone Source)
}
pred inv4[] {
(all u: (one User),w1,w2: (one Work) {
(((w1 in (u.profile)) && (w2 in (u.profile)) && (w1 in (u.visible)) && (w2 in (u.visible))) => (w1 = w2))
})
}