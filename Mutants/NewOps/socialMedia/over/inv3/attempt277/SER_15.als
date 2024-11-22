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
(all x: (one Photo),y: (one Photo) {
(((x !in Ad) && (x in (y.sees))) => (some z: (one User) {
((x in (z.posts)) && (z in (x.follows)))
}))
})
}





