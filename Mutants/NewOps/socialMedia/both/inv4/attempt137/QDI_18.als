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
(some a: (one Ad) {
(all i: (Influencer - User) {
((a in (i.posts)) => ((i.posts) in Ad))
})
})
}





