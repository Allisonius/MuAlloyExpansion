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
pred inv6[] {
(all t: (one Teacher) {
(inv5[])
})
}
pred inv5[] {
(no var123456 : Teacher { (some (var123456.Teaches))})
}





