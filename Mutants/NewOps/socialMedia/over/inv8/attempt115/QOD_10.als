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
pred inv8[] {
(some u1: (one User) {
((((Ad)) in (((User)).sees)) => ((((Ad)) in (u1.posts)) && (((User)) != u1) && ((u1 in (((User)).follows)) || (u1 in (((User)).suggested)))))
})
}





