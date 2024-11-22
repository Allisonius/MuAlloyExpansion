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
pred inv3[] {
((all u: (one User),u2: (one User),y: (one Photo) {
(((y !in Influencer) && ((u->y) in sees) && ((u2->y) in posts)) => ((u->u2) in follows))
}) && (all u: (one User),y: (one Ad) {
((u->y) in sees)
}))
}





