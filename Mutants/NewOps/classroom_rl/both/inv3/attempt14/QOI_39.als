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
pred inv3[] {
(((Person in Student) && (some var123456 : Teacher { (Person !in var123456)})) || ((Person !in Student) && (Person in Teacher)))
}





