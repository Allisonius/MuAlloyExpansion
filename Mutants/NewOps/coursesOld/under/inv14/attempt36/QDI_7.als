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
(all disj s1,s2: (Person + Professor),disj p1,p2: (one Project) {
(((p1 in (s1.projects)) && (p1 in (s2.projects))) => (((s1->p2) !in projects) || ((s2->p2) !in projects)))
})
}





