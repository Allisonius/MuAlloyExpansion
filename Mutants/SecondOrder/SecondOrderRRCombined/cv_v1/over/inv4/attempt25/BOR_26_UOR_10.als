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
source: (set Source)
}
pred inv4[] {
(all u: (one User),w: (one Work),w1: (one Work) {
(((w in (u.visible)) && (w1 in (u.visible))) <=> (w != w1))
})
}