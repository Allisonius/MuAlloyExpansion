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
(lone x,y: (one Person) {
(all z: (one Course) {
(((z in (x.enrolled)) && (z in (y.enrolled)) && (x in Professor)) => (((x.teaches) !in (y.enrolled)) && ((y.enrolled) !in (x.teaches))))
})
})
}





