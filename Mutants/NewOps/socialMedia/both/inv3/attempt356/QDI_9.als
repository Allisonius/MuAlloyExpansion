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
(all x,z: (one User),y: (Photo & Ad) {
(((y in (x.sees)) && (y in (z.posts)) && (y !in Ad)) => (z in (x.follows)))
})
}





