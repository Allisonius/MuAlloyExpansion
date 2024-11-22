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
(all c1,c2: (one Course) {
(all p: (one Person) {
((((p->((Grade))) in (c1.grades)) && ((p->((Grade))) in (c2.grades))) => (c1 != c2))
})
})
}





