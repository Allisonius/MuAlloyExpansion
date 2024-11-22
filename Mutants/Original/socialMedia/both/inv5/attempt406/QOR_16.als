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
((all u1: (one User),inf: (one Influencer) {
((u1->inf) in follows)
}) && (no u: (one User) {
((u.follows) in Influencer)
}))
}





