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
pred inv11[] {
(all x: (one Student) {
(lone y: (one Course) {
(all z: (one Grade) {
(((x->z) in (y.grades)) => (y in (x.enrolled)))
})
})
})
}





