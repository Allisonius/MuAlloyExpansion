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

}
pred working2gether[s1,s2: Student,c: Course] {
(all p: (one (c.projects)) {
((s1 != s2) && (c in ((s1.enrolled) & (s2.enrolled))) && (p in ((s1.projects) + (s2.projects))))
})
}
pred consecGrades[g1,g2: Grade] {
((g1 != g2) && (g1 = (g2.(ordering/prev[]))))
}





