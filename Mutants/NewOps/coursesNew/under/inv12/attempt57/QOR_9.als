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
(all p: (one Student) {
(some c: (one (p.enrolled)) {
(all g: (one Grade) {
(lone ((p->g) & (c.grades)))
})
})
})
}





