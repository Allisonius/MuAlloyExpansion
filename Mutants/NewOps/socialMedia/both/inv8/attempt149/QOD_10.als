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
((((((User)) in (sees.Ad)) && (((Influencer)) in (posts.Ad))) => (((User)) in (follows.((Influencer))))) || (((User)) in (suggested.((Influencer)))))
}





