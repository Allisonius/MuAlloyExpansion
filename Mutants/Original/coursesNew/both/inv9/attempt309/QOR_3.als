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
(lone p: (one Professor),col: (one (Professor - p)) {
(some c: (one Course) {
(((c in (col.teaches)) && (c in (p.teaches))) => (no ((col.enrolled) & (p.teaches))))
})
})
}





