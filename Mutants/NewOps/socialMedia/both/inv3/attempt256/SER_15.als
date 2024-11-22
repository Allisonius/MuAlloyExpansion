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
(all x: (one Photo),y: (one Ad) {
((x in (sees.x)) <=> ((x in ((follows.y).posts)) && (x in Ad)))
})
}





