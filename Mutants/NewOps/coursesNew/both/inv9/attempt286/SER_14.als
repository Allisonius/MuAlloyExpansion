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
(all x: (one Course),y: (one Course) {
((x in (teaches.y)) => (no z: (one Person) {
((z in (enrolled.y)) && (z in Professor) && (z != x))
}))
})
}





