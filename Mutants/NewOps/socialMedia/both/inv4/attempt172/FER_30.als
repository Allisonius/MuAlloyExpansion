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
(all u: (one User),a: (one Ad) {
(some al: (one (a.(~sees))) {
((al in u) => ((u.posts) in Ad))
})
})
}





