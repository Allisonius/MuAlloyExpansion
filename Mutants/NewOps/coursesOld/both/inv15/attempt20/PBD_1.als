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
(p in ((s1.projects) + (s2.projects)))
})
}





