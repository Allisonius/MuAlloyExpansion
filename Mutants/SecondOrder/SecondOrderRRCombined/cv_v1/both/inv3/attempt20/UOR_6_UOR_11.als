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
(all w: (one (source.Source)),w1,w2: (one (w.ids)) {
(w1 = w2)
})
}