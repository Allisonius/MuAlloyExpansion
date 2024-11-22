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
(all p1,p2: (one Person) {
(all c1,c2: (one Project) {
(((c1 in (p1.projects)) && (c1 in (p2.projects)) && ((p1.projects) in c2) && (p1 != p2)) => (c2 !in (p2.projects)))
})
})
}





