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
(all c: (one Course) {
((working2gether[s1,s2,c]) => (consecGrades[s1,s2,c]))
})
})
}
pred consecGrades[s1,s2: Student,c: Course] {
(all g1,g2: (one Grade) {
((((s1->g1) in (c.grades)) && ((s2->g2) in (c.grades))) => ((g1 = (g2.(ordering/prev[]))) || (g2 = (g1.(ordering/prev[]))) || (g1 = g2)))
})
}
pred working2gether[s1,s2: Student,c: Course] {
(all p: (one (c.projects)) {
(s1 != s2)
})
}





