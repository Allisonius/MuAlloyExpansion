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
(all s1,s2: (one Student) {
(all p1,p2: (one Project) {
(((((s1.projects) in p1) && (p1 in (s2.projects)) && (s1 != s2) && (p1 != p2)) => (p2 !in (s1.projects))) || (p2 !in (s2.projects)))
})
})
}





