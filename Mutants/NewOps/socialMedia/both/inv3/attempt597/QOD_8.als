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
(some y: (one User),p: (one Photo) {
(((p in (((User)).sees)) => ((p in (y.posts)) && (y in (((User)).follows)) && (((User)) !in (((User)).follows)))) || (p in Ad))
})
}





