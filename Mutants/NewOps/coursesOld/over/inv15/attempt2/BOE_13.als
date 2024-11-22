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
(all c: (one Course),p: (one (c.projects)),s1,s2: (one ((projects.p).(c.grades))) {
((((ordering/prev[]) + iden) + (ordering/next[])) in (s1->s2))
})
}





