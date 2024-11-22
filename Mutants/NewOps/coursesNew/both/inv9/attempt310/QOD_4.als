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
(all x,y: (one Person) {
(((((Course)) in (x.enrolled)) && (((Course)) in (y.enrolled)) && (x in Professor) && (((Course)) in (x.teaches))) => (((Course)) !in (y.enrolled)))
})
}





