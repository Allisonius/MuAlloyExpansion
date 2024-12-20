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
pred inv4[] {
(all x: (one User) {
(some p: (one Photo) {
(((p in Ad) && (p in (x.posts))) => ((x.posts) in Influencer))
})
})
}





