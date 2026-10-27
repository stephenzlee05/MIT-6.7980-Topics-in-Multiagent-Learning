#import "meta/gabri_notes.typ": *
#show: gabri_notes.with(
  lec_num: 11,
  title: "General mechanism design via extensive-form games",
  instructor: [Brian Hu Zhang],
)

// Section: Introduction -- (MD) Mechanism design.
// This file holds one section of the lecture; it will be merged with the other sections.

== Mechanism design <sec-mechanism-design>

#bpar[Setup.] An auctioneer sells a car to two buyers and wants to maximize expected revenue, but does not know how much the buyers value the car. Buyer $i$ privately knows its value $v_i ~ D_i$, drawn independently, and reports $v'_i in RR$, possibly lying. The auctioneer commits to a _mechanism_ mapping reports to a winner $i^* in {bot, 1, 2}$ and a price $p$. If $i^* = bot$, everyone gets $0$; otherwise $u_A = p$, $u_(i^*) = v_(i^*) - p$, and the other buyer gets $0$. The _direct_ strategy of buyer $i$ is to report truthfully, $v'_i = v_i$.

#theorem[#citet(<Myerson1981Feb>)][
  If values are i.i.d. from a regular distribution $D$ (CDF $F$, density $f$, with virtual value $phi(v) := v - (1 - F(v)) \/ f(v)$ nondecreasing), then among mechanisms in which truthful reporting is an equilibrium and participation is voluntary, revenue is maximized by the _second-price auction with reserve $r := phi^(-1)(0)$_: nobody wins if every report is below $r$; otherwise the highest bidder wins and pays $max {"second-highest report", r}$.
]

For values uniform on $[0, 10]$ (in \$k), $r = 5$, so with bids $6$ and $4$, Buyer 1 wins and pays $5$. Truthful reporting is optimal: with $t := max {v'_(-i), r}$, buyer $i$ wins iff $v'_i > t$ and then pays $t$, so reporting $v_i$ wins exactly when winning is profitable.

#bpar[Extensive form.] Below, values are $2$ or $6$ with probability $1 \/ 2$ each, and the auctioneer commits to the second-price auction with reserve $6$ (ties broken at random), which appears only through the payoffs $(u_A, u_1, u_2)$. Each buyer reports knowing only its own value. Bold edges mark the direct strategies, which give revenue $4.5$, versus $3$ without a reserve.

#align(center)[
  #image("figures/info_design_mechanism/auction_tree.svg", width: 100%)
]

#bpar[Connection to the common theme.] An optimal mechanism is a strategy for the auctioneer such that, holding it fixed, the direct profile is a Nash equilibrium for the buyers. That restricting to direct mechanisms loses nothing is the revelation principle, discussed later.

#lec_bibliography("meta/refs.bib", title: none)
