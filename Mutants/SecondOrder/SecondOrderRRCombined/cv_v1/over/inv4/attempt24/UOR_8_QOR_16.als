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
(some u: (one User) {
(no ((u.visible).(same[])))
})
}

fun same[] : (Work->Work) {
({ disj w1,w2: (one Work) {
(some ((w1.ids) & (w2.ids)))
} })
}