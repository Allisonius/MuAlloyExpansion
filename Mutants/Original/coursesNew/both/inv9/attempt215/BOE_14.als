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
pred inv9[] {
(all x: (one Professor),c: (one Course) {
(some y: (one (x - Professor)) {
(((x->c) in teaches) => ((y->c) !in enrolled))
})
})
}





