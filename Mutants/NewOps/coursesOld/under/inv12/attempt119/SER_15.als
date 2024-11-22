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
(all s: (one Project) {
(all g1,g2: (one Grade) {
(all course: (one Course) {
((((s->g1) in (course.grades)) && ((s->g2) in (course.grades))) => (g1 = g2))
})
})
})
}





