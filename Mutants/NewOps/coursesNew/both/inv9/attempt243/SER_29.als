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
(all p1: (one Professor) {
(all p2: (one Professor) {
((some ((p2.enrolled) & (p1.enrolled))) => (no ((p1.teaches) & (p2.enrolled))))
})
})
}





