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
(all p1,p2: (one Professor),e1: (one (p1.enrolled)),e2: (one (p2.enrolled)) {
((e1 in (p2.teaches)) => (e2 !in (p1.enrolled)))
})
}





