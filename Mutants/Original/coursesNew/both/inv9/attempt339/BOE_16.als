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
(one c: (one Course) {
((((x->c) !in enrolled) => (((x->c) in teaches) && ((y->c) in teaches) && (x in Professor) && (y in Professor))) || ((y->c) !in enrolled))
})
})
}





