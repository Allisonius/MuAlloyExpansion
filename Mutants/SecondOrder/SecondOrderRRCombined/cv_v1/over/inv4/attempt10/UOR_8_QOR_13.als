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
ids: (lone Id),
source: (one Source)
}
pred inv4[] {
(no u: (one User) {
(all w1,w2: (one Work) {
(((w1 + w2) in (u.visible)) => (w1 != w2))
})
})
}