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
pred inv13[] {
(all x: (one Person),c: (one Course),g: (one Grade),p: (one Project) {
(((c->(x->g)) in grades) => ((x in Course) && ((x->c) in enrolled)))
})
}





