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
(all c: (one Course) {
(all s: (one Student) {
(lone g: (one Grade) {
((c in (s.enrolled)) => ((s->g) in (c.grades)))
})
})
})
}





