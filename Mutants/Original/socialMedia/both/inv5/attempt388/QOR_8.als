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
((some i1,i2: (one Influencer) {
((i1->i2) in follows)
}) && (all u: (one User) {
((u.follows) in Influencer)
}))
}





