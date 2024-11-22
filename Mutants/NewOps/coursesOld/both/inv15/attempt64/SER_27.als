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
(all s1,s2: (one Student) {
(all p: (one Project) {
(all c: (one Person) {
((((s1 != s2) && (p in ((s1.projects) & (s2.projects)))) => ((s1.(c.grades)) = ((s2.(c.grades)).(ordering/prev[])))) || ((s2.(c.grades)) = ((s1.(c.grades)).(ordering/prev[]))) || ((s1.(c.grades)) = (s2.(c.grades))))
})
})
})
}





