module unknown
open util/integer [] as integer
abstract sig Source {}
sig User extends Source {
profile: (set Work),
visible: (one Work)
}
sig Institution extends Source {}
sig Id {}
sig Work {
ids: (some Id),
source: (lone Source)
}
pred inv1[] {
(all w1,w2: (one Work) {
(((w1->w2) in visible) && ((w1->w2) in profile))
})
}