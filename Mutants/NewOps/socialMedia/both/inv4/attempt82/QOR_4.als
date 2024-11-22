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
(one u1: (one User) {
(((u1.posts) in Ad) => (all ph: (one Photo) {
(ph in Ad)
}))
})
}





