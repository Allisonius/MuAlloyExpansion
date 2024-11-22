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
(all u1,u2: (one Student) {
(no g: (one Grade) {
(all c: (one Course) {
((((u1->g) + (u2->g)) in (c.grades)) => (u1 = u2))
})
})
})
}





