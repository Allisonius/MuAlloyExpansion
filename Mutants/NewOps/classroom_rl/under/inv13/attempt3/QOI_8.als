module unknown
open util/integer [] as integer
sig Person {
Tutors: (set Person),
Teaches: (set Class)
}
sig Group {}
sig Class {
Groups: (Person->Group)
}
sig Teacher in Person {}
sig Student in Person {}
pred inv13[] {
(((Teacher.Tutors) in Student) && (all var123456 : Teacher { ((Tutors.Student) in var123456)}))
}





