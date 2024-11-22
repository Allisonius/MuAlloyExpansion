module unknown
open util/integer [] as integer
abstract sig Source {}
sig User extends Source {
profile: (set Work),
visible: (some Work)
}
sig Institution extends Source {}
sig Id {}
sig Work {
ids: (some Id),
source: (lone Source)
}
pred inv3[] {
(all w1: (one Work),w2: (one Work) {
((some ((w1.ids) & (w2.ids))) => (w1 = w2))
})
}