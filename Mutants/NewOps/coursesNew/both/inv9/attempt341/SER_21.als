module unknown
open util/integer [] as integer
open util/ordering [Grade] as ordering
sig Person {
teaches: (set Course),
enrolled: (set Course),
projects: (set Project)
}
sig Professor in Person {}
sig Student in Person {}
sig Course {
projects: (set Project),
grades: (Person->Grade)
}
sig Project {}
sig Grade {}
pred inv9[] {
(all p: (one Project),col: (one (Professor - p)) {
(some c: (one Course) {
(((c in (p.teaches)) && (c in (col.teaches))) => (all co: (one Course) {
((co in (p.teaches)) => (co !in (col.enrolled)))
}))
})
})
}





