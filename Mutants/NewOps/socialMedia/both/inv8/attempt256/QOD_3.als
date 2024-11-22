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
((all u: (one User) {
(some (posts.((u.sees) & Ad)))
}) && (all u: (one User) {
(((u->((Ad))) in sees) && (((u->(posts.((Ad)))) in follows) || ((u->(posts.((Ad)))) in suggested)))
}))
}





