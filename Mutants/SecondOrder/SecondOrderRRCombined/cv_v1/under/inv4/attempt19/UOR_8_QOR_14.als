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
(lone u: (one User) {
(all disj w1,w2: (one (u.visible)) {
(no ((w1.ids) & (w2.ids)))
})
})
}