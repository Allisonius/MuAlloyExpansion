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
(no x: (one User) {
(((((x.follows).posts) in Ad) || ((x.posts) in Ad)) => ((x.sees) in Ad))
})
}





