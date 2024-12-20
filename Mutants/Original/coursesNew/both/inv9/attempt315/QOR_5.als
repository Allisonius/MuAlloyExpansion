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
(some x,y: (one Professor) {
(some z: (one Course) {
((some ((x.teaches) & (y.teaches))) => ((no ((x.teaches) & (enrolled.y))) && (no ((y.teaches) & (enrolled.x)))))
})
})
}





