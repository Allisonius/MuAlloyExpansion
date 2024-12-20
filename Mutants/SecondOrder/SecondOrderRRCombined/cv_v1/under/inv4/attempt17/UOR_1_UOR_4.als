module unknown
open util/integer [] as integer
abstract sig Source {}
sig User extends Source {
profile: (lone Work),
visible: (lone Work)
}
sig Institution extends Source {}
sig Id {}
sig Work {
ids: (some Id),
source: (one Source)
}
pred inv4[] {
(all u: (one User),w: (one Work) {
((w in (u.profile)) => (lone ((u.visible) & w)))
})
}