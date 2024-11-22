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
((all p: (one Project),c1,c2: (one Project) {
(((p in (c1.projects)) && (p in (c1.projects))) => (c1 = c2))
}) && (all p: (one Project) {
(one c: (one Course) {
(p in (c.projects))
})
}))
}





