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
pred inv3[] {
(all s: (one Source) {
(all disj w,w1: (one ((source.s) & (User.profile))) {
(no ((w.ids) + (w1.ids)))
})
})
}





