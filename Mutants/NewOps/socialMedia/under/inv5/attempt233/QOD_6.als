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
pred inv5[] {
((((univ)) in Influencer) => (all u: (one User) {
((((univ)) != u) => ((u->((univ))) in follows))
}))
}





