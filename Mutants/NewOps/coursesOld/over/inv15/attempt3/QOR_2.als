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
pred inv15[] {
(no c: (one Course),p: (one (c.projects)),g1,g2: (one ((projects.p).(c.grades))) {
((g1->g2) in (((ordering/prev[]) + iden) + (ordering/next[])))
})
}





