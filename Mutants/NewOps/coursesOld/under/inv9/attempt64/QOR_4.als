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
(some p1,p2: (one Person),c1,c2: (one Course) {
(((c1 in (p1.teaches)) && (c1 in (p2.teaches)) && (p1 != p2) && (p1 in (c2.teaches))) => (p2 !in (c2.enrolled)))
})
}





