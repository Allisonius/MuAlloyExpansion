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
(all p: (one Professor) {
(all col: (one (Professor - p)) {
(some c: (one Professor) {
(((c in (col.teaches)) && (c in (p.teaches))) => (no ((col.enrolled) & (p.teaches))))
})
})
})
}





