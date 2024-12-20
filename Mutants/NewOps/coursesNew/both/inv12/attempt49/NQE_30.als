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
pred inv12[] {
(one z: (one Grade) {
(all y: (one Course) {
(all x: (one Student) {
((y in (x.enrolled)) => (((x->z) in (y.grades)) || ((x->z) !in (y.grades))))
})
})
})
}





