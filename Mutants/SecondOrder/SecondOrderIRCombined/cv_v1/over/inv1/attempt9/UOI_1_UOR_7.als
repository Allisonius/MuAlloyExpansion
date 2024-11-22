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
ids: (set Id),
source: (one Source)
}
pred inv1[] {
(all w1,w2: (one Work) {
(before (((w1->w2) in visible) && ((w1->w2) in profile)))
})
}