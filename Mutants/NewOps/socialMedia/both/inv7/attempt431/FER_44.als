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
pred inv7[] {
(all u: (one User) {
(some f: (one (User - u)) {
((f in (u.posts)) => ((f !in (u.follows)) && (f in ((u.follows).follows))))
})
})
}





