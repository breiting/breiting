---
title: "Example Report"
author: Bernhard Reitinger
company: Robotic Eyes GmbH
date: 2018-02-20
subtitle: "Technical Proposal"
titlepage: true
logo: oscar.png
titlegraphic: oscar.png
titlepage-text-color: f39300
titlepage-rule-color: f39300
titlepage-rule-height: 1
...

# Code

```java
public class Example implements LoremIpsum {
	public static void main(String[] args) {
		if(args.length < 2) {
			System.out.println("Lorem ipsum dolor sit amet");
		}
	} // Obscura atque coniuge, per de coniunx
}
```

# Maths

\begin{equation}\label{eq:neighbor-propability}
    p_{ij}(t) = \frac{\ell_j(t) - \ell_i(t)}{\sum_{k \in N_i(t)}^{} \ell_k(t) - \ell_i(t)}
\end{equation}

# Images and Tables

## LaTeX Table with Caption

At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr.

\begin{longtable}[]{llllllll}
\caption[Nam liber tempor cum soluta nobis eleifend option congue.]{Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.} \\
\toprule
Test Nr. & Position & Radius & Rot & Grün & Blau &
beste Fitness & Abweichung\tabularnewline
\midrule
\endhead
1 & 20 \% & 20 \% & 20 \% & 20 \% & 20 \% & 7,5219 &
0,9115\tabularnewline
2 & 0 \% & 25 \% & 25 \% & 25 \% & 25 \% & 8,0566 &
1,4462\tabularnewline
3 & 0 \% & 0 \% & 33 \% & 33 \% & 33 \% & 8,7402 & 2,1298\tabularnewline
4 & 50 \% & 20 \% & 10 \% & 10 \% & 10 \% & 6,6104 &
0,0000\tabularnewline
5 & 70 \% & 0 \% & 10 \% & 10 \% & 10 \% & 7,0696 &
0,4592\tabularnewline
6 & 20 \% & 50 \% & 10 \% & 10 \% & 10 \% & 7,0034 &
0,3930\tabularnewline
\bottomrule
\end{longtable}

At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr.

## Image with Caption

![Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.](oscar.png)

## Markdown Table without Caption

Lorem markdownum Letoia, et alios: figurae flectentem annis aliquid Peneosque abesse, obstat gravitate. Obscura atque coniuge, per de coniunx, sibi medias
commentaque virgine anima tamen comitemque petis, sed. In Amphion vestros
hamos ire arceor mandere spicula, in licet aliquando.

Test Nr. | Position | Radius | Rot | Grün | Blau | beste Fitness | Abweichung |
|---|---|---|---|---|---|---|---|
1 |  20 % |  20 % |  20 % |  20 % |  20 % |  7,5219 |  0,9115 |
2 |   0 % |  25 % |  25 % |  25 % |  25 % |  8,0566 |  1,4462 |
3 |   0 % |   0 % |  33 % |  33 % |  33 % |  8,7402 |  2,1298 |
4 |  50 % |  20 % |  10 % |  10 % |  10 % |  6,6104 |  0,0000 |
5 |  70 % |   0 % |  10 % |  10 % |  10 % |  7,0696 |  0,4592 |
6 |  20 % |  50 % |  10 % |  10 % |  10 % |  7,0034 |  0,3930 |
7 |  40 % |  15 % |  15 % |  15 % |  15 % |  6,9122 |  0,3018 |

Porrigitur et Pallas nuper longusque cratere habuisse sepulcro pectore fertur.
Laudat ille auditi; vertitur iura tum nepotis causa; motus. Diva virtus! Acrota destruitis vos iubet quo et classis excessere Scyrumve spiro subitusque mente Pirithoi abstulit, lapides.

## Image without Caption

![](oscar.png)
