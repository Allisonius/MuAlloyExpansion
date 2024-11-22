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
(all p: (one Project),disj s1,s2: (one Course),c: (one Course) {
(((p in (s1.projects)) && (p in (s2.projects)) && (p in (c.projects))) => (((s1.(c.grades)) - 1) = (s2.(c.grades))))
})
}





