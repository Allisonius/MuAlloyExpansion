module unknown
open util/integer [] as integer
sig User {
follows: (set User),
sees: (set Photo),
posts: (set Photo),
suggested: (set User)
}
sig Influencer extends User {}
sig Photo {
date: (one Day)
}
sig Ad extends Photo {}
sig Day {}
pred inv3[] {
((no x: (one User) {
(x !in (x.follows))
}) && (all x: (one User) {
(all y: (one Ad) {
((x.sees) = (((x.follows).posts) + y))
})
}))
}





