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
((all x: (one User) {
(((x.sees) - Ad) in (x.follows))
}) && (all x: (one User) {
(all y: (one Ad) {
((y in (x.sees)) && (y !in (x.posts)))
})
}))
}





