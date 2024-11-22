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
(all s,s1: (one Student) {
(all p,p1: (one Project) {
(((p in (s.projects)) && (p in (s1.projects)) && (p1 != (s.projects)) && (p1 in (s1.projects)) && (p != p1) && (s != s1)) => (p = p1))
})
})
}





