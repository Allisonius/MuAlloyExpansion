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
(all s: (one Student),proj1,proj2: (one Project),c1,c2: (one Student) {
((((s->c1) in enrolled) && ((s->c2) in enrolled) && ((s->proj1) in projects) && ((s->proj2) in projects)) <=> ((c1 != c2) && (proj1 = proj2)))
})
}





