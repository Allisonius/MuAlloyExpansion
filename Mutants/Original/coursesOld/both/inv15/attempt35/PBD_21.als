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
(all g1,g2: (one Grade) {
((working2gether[s1,s2,c]) && (((s1->g1) + (s2->g2)) in (c.grades)))
})
})
})
}
pred working2gether[s1,s2: Student,c: Course] {

}





