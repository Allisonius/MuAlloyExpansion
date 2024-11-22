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
pred inv4[] {
(all c1,c2: (one Course),p1,p2: (one Project) {
((((c1.projects) in p1) && (p2 in (c2.projects))) => (p1 != p2))
})
}





