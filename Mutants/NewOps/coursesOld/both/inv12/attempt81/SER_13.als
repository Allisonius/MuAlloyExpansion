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
(all p: (one Grade),c: (one Course),g: (one Grade) {
(((p in Student) && (c in ((grades.g).p))) => (p in (enrolled.c)))
})
}





