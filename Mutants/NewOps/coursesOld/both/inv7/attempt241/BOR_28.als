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
pred inv7[] {
(all s: (one Student),p1,p2: (one Project) {
(some c1,c2: (one Course) {
(((s = (projects.p1)) && (s in (projects.p2))) => ((c1 = (projects.p1)) && (c2 = (projects.p2)) && (c1 != c2)))
})
})
}





