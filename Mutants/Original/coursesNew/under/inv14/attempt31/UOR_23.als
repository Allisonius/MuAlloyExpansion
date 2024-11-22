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
pred inv14[] {
(all disj s1,s2: (one Student) {
(all p: (one Project) {
((((s1->p) in projects) && ((s2->p) in projects)) => (lone (((s2.projects) - p) & (s1.projects))))
})
})
}





