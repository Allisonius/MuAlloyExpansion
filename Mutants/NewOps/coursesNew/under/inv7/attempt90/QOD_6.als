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
(all per: (one Person) {
(all c: (one Course) {
(((per in Student) && (((Project)) in (per.projects)) && (((Project)) in (per.projects)) && (((Project)) in (c.projects)) && (((Project)) != ((Project)))) => (((Project)) !in (c.projects)))
})
})
}





