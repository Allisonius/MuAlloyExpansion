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
pred inv3[] {
(all x: (one univ) {
((x in Course) => (some y: (one univ) {
((y in Grade) && (!(y in Student)) && ((y->x) in enrolled))
}))
})
}





