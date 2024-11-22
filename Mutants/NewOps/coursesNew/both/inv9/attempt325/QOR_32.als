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
(all professor: (one Professor) {
(all colleagues: (one Professor) {
(lone course: (one Course) {
(((professor->course) in teaches) && ((colleagues->course) in enrolled))
})
})
})
}





