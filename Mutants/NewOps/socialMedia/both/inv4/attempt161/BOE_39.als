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
(all x: (one User),a: (one Ad),p: (one (Photo - Ad)) {
(((x.posts) in a) => ((x.posts) !in Ad))
})
}





