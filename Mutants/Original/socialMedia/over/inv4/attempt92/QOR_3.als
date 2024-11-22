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
(lone x: (one User) {
(all y: (one (x.posts)) {
(one z: (one (x.posts)) {
((z in Ad) => (y in Ad))
})
})
})
}





