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
(all disj p1,p2: (one Project),disj s1,s2: (one Course) {
((((p1 in (s1.projects)) && (p1 in (s2.projects))) => (p2 !in (s1.projects))) || (p2 !in (s2.projects)))
})
}





