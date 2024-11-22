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
pred inv11[] {
(one u: (one Person),c: (one Course),g: (one Grade) {
(((c->(u->g)) in grades) => ((u in Student) && ((u->c) in enrolled)))
})
}





