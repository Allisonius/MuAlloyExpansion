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
((((((Course)).(~enrolled)).(((Course)).grades)) = (ordering/max[(Student.(((Course)).grades))])) && (some ((((Course)).projects) & ((((Course)).(~enrolled)).projects))))
}





