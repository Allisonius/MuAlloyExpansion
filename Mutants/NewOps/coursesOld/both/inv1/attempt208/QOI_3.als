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
pred inv1[] {
((all x: (one Course),y: (one (Person - Professor)) {
((y->x) !in enrolled)
}) && (no var123456 : Person { (no ((var123456 - Professor) & (enrolled.Course)))}))
}





