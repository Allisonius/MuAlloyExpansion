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
((s1 != s2) && (((Course)) in ((s1.enrolled) + (s2.enrolled))) && (working2gether[s1,s2,((Course))]))
})
}
pred working2gether[s1,s2: Student,c: Course] {
(all p: (one (c.projects)) {
((c in ((s1.enrolled) + (s2.enrolled))) && (p in ((s1.projects) + (s2.projects))))
})
}





