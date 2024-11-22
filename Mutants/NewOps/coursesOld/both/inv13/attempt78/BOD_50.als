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
pred inv13[] {
(all c: (one Course),p: (one Project),disj s,s2: (one Student),g: (one Grade) {
((g in (s.(c.grades))) => ((p in (s.projects)) && (p in c)))
})
}





