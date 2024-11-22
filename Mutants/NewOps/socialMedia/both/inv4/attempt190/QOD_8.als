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
(lone a: (one Ad) {
((a in (((User)).posts)) => (all a: (one (((User)).posts)) {
(a = Ad)
}))
})
}





