#import "../algo.typ": algo, i, d, comment, code

== Plain `algo` and `code`

#table(
  columns: 2,
  stroke: none,
  align: (x, _) => (right, left).at(x),
  "title:", "\"Floyd-Warshall\"    (algo only)",
  "parameters:", "(\"V\", \"E\", \"w\")   (algo only)"
)

#algo(
  title: "Floyd-Warshall",
  parameters: ("V", "E", "w"),
)[
  Let $"dist"[u,v] <- infinity$ for $u,v$ in $V$\
  For $(u,v)$ in $E$:#i\
    $"dist"[u,v] <- w(u,v)$ #comment[edge weights] #d\
  For $v$ in $V$:#i\
    $"dist"[v,v] <- 0$ #comment[base case] #d\
  \
  For $k <- 1$ to $|V|$:#i\
    For $i <- 1$ to $|V|$:#i\
      For $j <- 1$ to $|V|$:#i\
        #comment(inline: true)[if new path is shorter, reduce distance]\
        If $"dist"[i,j] > "dist"[i,k] + "dist"[k,j]$:#i\
          $"dist"[i,j] <- "dist"[i,k] + "dist"[k,j]$#d#d#d#d\
  \
  Return $"dist"$
]

#code()[
  ```py
  def floyd_warshall(G):
    # let G be an adjacency matrix
    dist = G
    
    for k in range(len(G)):
      for i in range(len(G)):
        for j in range(len(G)):
          if dist[i][j] > dist[i][k] + dist[k][j]:
            dist[i][j] = dist[i][k] + dist[k][j]
    
    return dist
  ```
]

#show heading: it => {
  pagebreak()
  it
}

== Basic styling parameters

#table(
  columns: 2,
  stroke: none,
  align: (x, _) => (right, left).at(x),
  "fill:", "none",
  "stroke:", "2pt + black",
  "radius:", "10pt",
  "row-gutter:", "8pt",
  "column-gutter:", "8pt",
  "inset:", "15pt",
  "indent-size:", "12pt    (algo only)",
  "indent-guides:", "1pt + gray",
  "indent-guides-offset:", "4pt",
  "comment-prefix:", "[#sym.triangle ]   (algo only)"
)

#algo(
  title: "Floyd-Warshall",
  parameters: ("V", "E", "w"),
  fill: none,
  stroke: 2pt + black,
  radius: 10pt,
  row-gutter: 8pt,
  column-gutter: 8pt,
  inset: 15pt,
  indent-size: 12pt,
  indent-guides: 1pt + gray,
  indent-guides-offset: 4pt,
  comment-prefix: [#sym.triangle ]
)[
  Let $"dist"[u,v] <- infinity$ for $u,v$ in $V$\
  For $(u,v)$ in $E$:#i\
    $"dist"[u,v] <- w(u,v)$ #comment[edge weights] #d\
  For $v$ in $V$:#i\
    $"dist"[v,v] <- 0$ #comment[base case] #d\
  \
  For $k <- 1$ to $|V|$:#i\
    For $i <- 1$ to $|V|$:#i\
      For $j <- 1$ to $|V|$:#i\
        #comment(inline: true)[if new path is shorter, reduce distance]\
        If $"dist"[i,j] > "dist"[i,k] + "dist"[k,j]$:#i\
          $"dist"[i,j] <- "dist"[i,k] + "dist"[k,j]$#d#d#d#d\
  \
  Return $"dist"$
]

#code(
  fill: none,
  stroke: 2pt + black,
  radius: 10pt,
  row-gutter: 8pt,
  column-gutter: 8pt,
  inset: 15pt,
  indent-guides: 1pt + gray,
  indent-guides-offset: 4pt,
)[
  ```py
  def floyd_warshall(G):
    # let G be an adjacency matrix
    dist = G
    
    for k in range(len(G)):
      for i in range(len(G)):
        for j in range(len(G)):
          if dist[i][j] > dist[i][k] + dist[k][j]:
            dist[i][j] = dist[i][k] + dist[k][j]
    
    return dist
  ```
]

== Empty bodies

#linebreak()

#algo()[]

#code()[]

== `code` with empty raw text

#linebreak()

#code()[#raw("")]

== `code` with empty raw block

#linebreak()

#code()[#raw("", block: true)]

== `code` with non-sequence raw block

#linebreak()

#code()[```py
def floyd_warshall(G):
  # let G be an adjacency matrix
  dist = G
  
  for k in range(len(G)):
    for i in range(len(G)):
      for j in range(len(G)):
        if dist[i][j] > dist[i][k] + dist[k][j]:
          dist[i][j] = dist[i][k] + dist[k][j]
  
  return dist
```]

== Indent guides with line wrapping

#table(
  columns: 2,
  stroke: none,
  align: (x, _) => (right, left).at(x),
  "indent-guides:", "1pt + black",
)

#algo(
  title: "Floyd-Warshall",
  parameters: ("V", "E", "w"),
  indent-guides: 1pt + black,
)[
  Let $"dist"[u,v] <- infinity$ for $u,v$ in $V$\
  For $(u,v)$ in $E$:#i\
    $"dist"[u,v] <- w(u,v)$ #comment[edge weights] #d\
  For $v$ in $V$:#i\
    $"dist"[v,v] <- 0$ #comment[base case] #d\
  \
  For $k <- 1$ to $|V|$:#i\
    For $i <- 1$ to $|V|$:#i\
      For $j <- 1$ to $|V|$:#i\
        #comment(inline: true)[if new path is shorter, reduce distance]\
        If $"dist"[i,j] > "dist"[i,k] + "dist"[k,j]$:#i\
          $"dist"[i,j] <- "dist"[i,k] + "dist"[k,j]$\
          blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah#d#d#d#d\
  \
  Return $"dist"$
]

#code(
  indent-guides: 1pt + black
)[
  ```py
  def floyd_warshall(G):
    # let G be an adjacency matrix
    dist = G
    
    for k in range(len(G)):
      for i in range(len(G)):
        for j in range(len(G)):
          if dist[i][j] > dist[i][k] + dist[k][j]:
            dist[i][j] = dist[i][k] + dist[k][j]
            blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah
    
    return dist
  ```
]

== `code` indent guides with custom tab size

#table(
  columns: 2,
  stroke: none,
  align: (x, _) => (right, left).at(x),
  "indent-guides:", "1pt + black",
  "tab-size:", "2"
)

#code(
  indent-guides: 1pt + black,
  tab-size: 2,
)[
  ```py
  def floyd_warshall(
      G
    ):
    # let G be an adjacency matrix
    dist = G
    
    for k in range(len(G)):
      for i in range(len(G)):
        for j in range(len(G)):
          if dist[i][j] > dist[i][k] + dist[k][j]:
            dist[i][j] = dist[i][k] + dist[k][j]
    
    return dist
  ```
]

== No line numbers

#table(
  columns: 2,
  stroke: none,
  align: (x, _) => (right, left).at(x),
  "line-numbers:", "false"
)

#algo(
  title: "Floyd-Warshall",
  parameters: ("V", "E", "w"),
  line-numbers: false,
)[
  Let $"dist"[u,v] <- infinity$ for $u,v$ in $V$\
  For $(u,v)$ in $E$:#i\
    $"dist"[u,v] <- w(u,v)$ #comment[edge weights] #d\
  For $v$ in $V$:#i\
    $"dist"[v,v] <- 0$ #comment[base case] #d\
  \
  For $k <- 1$ to $|V|$:#i\
    For $i <- 1$ to $|V|$:#i\
      For $j <- 1$ to $|V|$:#i\
        #comment(inline: true)[if new path is shorter, reduce distance]\
        If $"dist"[i,j] > "dist"[i,k] + "dist"[k,j]$:#i\
          $"dist"[i,j] <- "dist"[i,k] + "dist"[k,j]$#d#d#d#d\
  \
  Return $"dist"$
]

#code(
  line-numbers: false,
)[
  ```py
  def floyd_warshall(G):
    # let G be an adjacency matrix
    dist = G
    
    for k in range(len(G)):
      for i in range(len(G)):
        for j in range(len(G)):
          if dist[i][j] > dist[i][k] + dist[k][j]:
            dist[i][j] = dist[i][k] + dist[k][j]
    
    return dist
  ```
]

== `algo` without keywords

#table(
  columns: 2,
  stroke: none,
  align: (x, _) => (right, left).at(x),
  "strong-keywords:", "false"
)

#algo(
  title: "Floyd-Warshall",
  parameters: ("V", "E", "w"),
  strong-keywords: false,
)[
  Let $"dist"[u,v] <- infinity$ for $u,v$ in $V$\
  For $(u,v)$ in $E$:#i\
    $"dist"[u,v] <- w(u,v)$ #comment[edge weights] #d\
  For $v$ in $V$:#i\
    $"dist"[v,v] <- 0$ #comment[base case] #d\
  \
  For $k <- 1$ to $|V|$:#i\
    For $i <- 1$ to $|V|$:#i\
      For $j <- 1$ to $|V|$:#i\
        #comment(inline: true)[if new path is shorter, reduce distance]\
        If $"dist"[i,j] > "dist"[i,k] + "dist"[k,j]$:#i\
          $"dist"[i,j] <- "dist"[i,k] + "dist"[k,j]$#d#d#d#d\
  \
  Return $"dist"$
]

== `algo` with custom keywords

#table(
  columns: 2,
  stroke: none,
  align: (x, _) => (right, left).at(x),
  "keywords:",  "(\"in\", \"to\")"
)

#algo(
  title: "Floyd-Warshall",
  parameters: ("V", "E", "w"),
  keywords: ("in", "to")
)[
  Let $"dist"[u,v] <- infinity$ for $u,v$ in $V$\
  For $(u,v)$ in $E$:#i\
    $"dist"[u,v] <- w(u,v)$ #comment[edge weights] #d\
  For $v$ in $V$:#i\
    $"dist"[v,v] <- 0$ #comment[base case] #d\
  \
  For $k <- 1$ to $|V|$:#i\
    For $i <- 1$ to $|V|$:#i\
      For $j <- 1$ to $|V|$:#i\
        #comment(inline: true)[if new path is shorter, reduce distance]\
        If $"dist"[i,j] > "dist"[i,k] + "dist"[k,j]$:#i\
          $"dist"[i,j] <- "dist"[i,k] + "dist"[k,j]$#d#d#d#d\
  \
  Return $"dist"$
]

== `algo` without title

#table(
  columns: 2,
  stroke: none,
  align: (x, _) => (right, left).at(x),
  "title:",  "none"
)

#algo(
  parameters: ("V", "E", "w"),
)[
  Let $"dist"[u,v] <- infinity$ for $u,v$ in $V$\
  For $(u,v)$ in $E$:#i\
    $"dist"[u,v] <- w(u,v)$ #comment[edge weights] #d\
  For $v$ in $V$:#i\
    $"dist"[v,v] <- 0$ #comment[base case] #d\
  \
  For $k <- 1$ to $|V|$:#i\
    For $i <- 1$ to $|V|$:#i\
      For $j <- 1$ to $|V|$:#i\
        #comment(inline: true)[if new path is shorter, reduce distance]\
        If $"dist"[i,j] > "dist"[i,k] + "dist"[k,j]$:#i\
          $"dist"[i,j] <- "dist"[i,k] + "dist"[k,j]$#d#d#d#d\
  \
  Return $"dist"$
]

== `algo` without parameters

#table(
  columns: 2,
  stroke: none,
  align: (x, _) => (right, left).at(x),
  "parameters:",  "()"
)

#algo(
  title: "Floyd-Warshall",
)[
  Let $"dist"[u,v] <- infinity$ for $u,v$ in $V$\
  For $(u,v)$ in $E$:#i\
    $"dist"[u,v] <- w(u,v)$ #comment[edge weights] #d\
  For $v$ in $V$:#i\
    $"dist"[v,v] <- 0$ #comment[base case] #d\
  \
  For $k <- 1$ to $|V|$:#i\
    For $i <- 1$ to $|V|$:#i\
      For $j <- 1$ to $|V|$:#i\
        #comment(inline: true)[if new path is shorter, reduce distance]\
        If $"dist"[i,j] > "dist"[i,k] + "dist"[k,j]$:#i\
          $"dist"[i,j] <- "dist"[i,k] + "dist"[k,j]$#d#d#d#d\
  \
  Return $"dist"$
]

== `algo` without header

#table(
  columns: 2,
  stroke: none,
  align: (x, _) => (right, left).at(x),
  "title:",  "none",
  "parameters:", "()"
)

#algo()[
  Let $"dist"[u,v] <- infinity$ for $u,v$ in $V$\
  For $(u,v)$ in $E$:#i\
    $"dist"[u,v] <- w(u,v)$ #comment[edge weights] #d\
  For $v$ in $V$:#i\
    $"dist"[v,v] <- 0$ #comment[base case] #d\
  \
  For $k <- 1$ to $|V|$:#i\
    For $i <- 1$ to $|V|$:#i\
      For $j <- 1$ to $|V|$:#i\
        #comment(inline: true)[if new path is shorter, reduce distance]\
        If $"dist"[i,j] > "dist"[i,k] + "dist"[k,j]$:#i\
          $"dist"[i,j] <- "dist"[i,k] + "dist"[k,j]$#d#d#d#d\
  \
  Return $"dist"$
]


== `algo` with content-type parameters

#table(
  columns: 2,
  stroke: none,
  align: (x, _) => (right, left).at(x),
  "parameters:", "([#text(blue, [V])], [#text(red, [E])], [#text(green, [w])])"
)

#algo(
  title: "Floyd-Warshall",
  parameters: ([#text(blue, [V])], [#text(red, [E])], [#text(green, [w])]),
)[
  Let $"dist"[u,v] <- infinity$ for $u,v$ in $V$\
  For $(u,v)$ in $E$:#i\
    $"dist"[u,v] <- w(u,v)$ #comment[edge weights] #d\
  For $v$ in $V$:#i\
    $"dist"[v,v] <- 0$ #comment[base case] #d\
  \
  For $k <- 1$ to $|V|$:#i\
    For $i <- 1$ to $|V|$:#i\
      For $j <- 1$ to $|V|$:#i\
        #comment(inline: true)[if new path is shorter, reduce distance]\
        If $"dist"[i,j] > "dist"[i,k] + "dist"[k,j]$:#i\
          $"dist"[i,j] <- "dist"[i,k] + "dist"[k,j]$#d#d#d#d\
  \
  Return $"dist"$
]

== `algo` with content-type title

#table(
  columns: 2,
  stroke: none,
  align: (x, _) => (right, left).at(x),
  "title:", "[#set text(red);Floyd-Warshall]"
)

#algo(
  title: [#set text(red);Floyd-Warshall]
)[
  Let $"dist"[u,v] <- infinity$ for $u,v$ in $V$\
  For $(u,v)$ in $E$:#i\
    $"dist"[u,v] <- w(u,v)$ #comment[edge weights] #d\
  For $v$ in $V$:#i\
    $"dist"[v,v] <- 0$ #comment[base case] #d\
  \
  For $k <- 1$ to $|V|$:#i\
    For $i <- 1$ to $|V|$:#i\
      For $j <- 1$ to $|V|$:#i\
        #comment(inline: true)[if new path is shorter, reduce distance]\
        If $"dist"[i,j] > "dist"[i,k] + "dist"[k,j]$:#i\
          $"dist"[i,j] <- "dist"[i,k] + "dist"[k,j]$#d#d#d#d\
  \
  Return $"dist"$
]

== `algo` with custom header

#linebreak()

#algo(
  header: {
    strong("Floyd-Warshall Algorithm")
    move(dx: 18pt, table(
      columns: 2,
      align: (x, _) => (right, left).at(x),
      stroke: none,
      inset: 0pt,
      row-gutter: 10pt,
      column-gutter: 10pt,
      strong("Inputs:"),
      [
        graph $G=(V,E)$\
        weight function $w: E -> RR$
      ],
      strong("Outputs:"),
      [distance matrix $"dist"$]
    ))
    align(center, line(length: 330pt))
  }
)[
  Let $"dist"[u,v] <- infinity$ for $u,v$ in $V$\
  For $(u,v)$ in $E$:#i\
    $"dist"[u,v] <- w(u,v)$ #comment[edge weights] #d\
  For $v$ in $V$:#i\
    $"dist"[v,v] <- 0$ #comment[base case] #d\
  \
  For $k <- 1$ to $|V|$:#i\
    For $i <- 1$ to $|V|$:#i\
      For $j <- 1$ to $|V|$:#i\
        #comment(inline: true)[if new path is shorter, reduce distance]\
        If $"dist"[i,j] > "dist"[i,k] + "dist"[k,j]$:#i\
          $"dist"[i,j] <- "dist"[i,k] + "dist"[k,j]$#d#d#d#d\
  \
  Return $"dist"$
]

== Text styling

#table(
  columns: 2,
  stroke: none,
  align: (x, _) => (right, left).at(x),
  "main-text-styles:", "(fill: green)",
  "line-number-styles:", "(fill: red)",
  "comment-styles:", "(fill: blue)   (algo only)"
)

#algo(
  title: "Floyd-Warshall",
  parameters: ("V", "E", "w"),
  main-text-styles: (fill: green),
  line-number-styles: (fill: red),
  comment-styles: (fill: blue)
)[
  Let $"dist"[u,v] <- infinity$ for $u,v$ in $V$\
  For $(u,v)$ in $E$:#i\
    $"dist"[u,v] <- w(u,v)$ #comment[edge weights] #d\
  For $v$ in $V$:#i\
    $"dist"[v,v] <- 0$ #comment[base case] #d\
  \
  For $k <- 1$ to $|V|$:#i\
    For $i <- 1$ to $|V|$:#i\
      For $j <- 1$ to $|V|$:#i\
        #comment(inline: true)[if new path is shorter, reduce distance]\
        If $"dist"[i,j] > "dist"[i,k] + "dist"[k,j]$:#i\
          $"dist"[i,j] <- "dist"[i,k] + "dist"[k,j]$#d#d#d#d\
  \
  Return $"dist"$
]

#code(
  main-text-styles: (fill: green),
  line-number-styles: (fill: red)
)[
  ```py
  def floyd_warshall(G):
    # let G be an adjacency matrix
    dist = G
    
    for k in range(len(G)):
      for i in range(len(G)):
        for j in range(len(G)):
          if dist[i][j] > dist[i][k] + dist[k][j]:
            dist[i][j] = dist[i][k] + dist[k][j]
    
    return dist
  ```
]

== Indent guides with big main text

#table(
  columns: 2,
  stroke: none,
  align: (x, _) => (right, left).at(x),
  "indent-guides:", "1pt + black",
  "main-text-styles:", "(size: 15pt)"
)

#algo(
  title: "Floyd-Warshall",
  parameters: ("V", "E", "w"),
  indent-guides: 1pt + black,
  main-text-styles: (size: 15pt),
)[
  Let $"dist"[u,v] <- infinity$ for $u,v$ in $V$\
  For $(u,v)$ in $E$:#i\
    $"dist"[u,v] <- w(u,v)$ #comment[edge weights] #d\
  For $v$ in $V$:#i\
    $"dist"[v,v] <- 0$ #comment[base case] #d\
  \
  For $k <- 1$ to $|V|$:#i\
    For $i <- 1$ to $|V|$:#i\
      For $j <- 1$ to $|V|$:#i\
        #comment(inline: true)[if new path is shorter, reduce distance]\
        If $"dist"[i,j] > "dist"[i,k] + "dist"[k,j]$:#i\
          $"dist"[i,j] <- "dist"[i,k] + "dist"[k,j]$#d#d#d#d\
  \
  Return $"dist"$
]

#code(
  indent-guides: 1pt + black,
  main-text-styles: (size: 15pt)
)[
  ```py
  def floyd_warshall(G):
    # let G be an adjacency matrix
    dist = G
    
    for k in range(len(G)):
      for i in range(len(G)):
        for j in range(len(G)):
          if dist[i][j] > dist[i][k] + dist[k][j]:
            dist[i][j] = dist[i][k] + dist[k][j]
    
    return dist
  ```
]

== Indent guides with big line numbers

#table(
  columns: 2,
  stroke: none,
  align: (x, _) => (right, left).at(x),
  "indent-guides:", "1pt + black",
  "line-number-styles:", "(size: 15pt)"
)

#algo(
  title: "Floyd-Warshall",
  parameters: ("V", "E", "w"),
  indent-guides: 1pt + black,
  line-number-styles: (size: 15pt),
)[
  Let $"dist"[u,v] <- infinity$ for $u,v$ in $V$\
  For $(u,v)$ in $E$:#i\
    $"dist"[u,v] <- w(u,v)$ #comment[edge weights] #d\
  For $v$ in $V$:#i\
    $"dist"[v,v] <- 0$ #comment[base case] #d\
  \
  For $k <- 1$ to $|V|$:#i\
    For $i <- 1$ to $|V|$:#i\
      For $j <- 1$ to $|V|$:#i\
        #comment(inline: true)[if new path is shorter, reduce distance]\
        If $"dist"[i,j] > "dist"[i,k] + "dist"[k,j]$:#i\
          $"dist"[i,j] <- "dist"[i,k] + "dist"[k,j]$#d#d#d#d\
  \
  Return $"dist"$
]

#code(
  indent-guides: 1pt + black,
  line-number-styles: (size: 15pt)
)[
  ```py
  def floyd_warshall(G):
    # let G be an adjacency matrix
    dist = G
    
    for k in range(len(G)):
      for i in range(len(G)):
        for j in range(len(G)):
          if dist[i][j] > dist[i][k] + dist[k][j]:
            dist[i][j] = dist[i][k] + dist[k][j]
    
    return dist
  ```
]

== `algo` indent guides with big comments

#table(
  columns: 2,
  stroke: none,
  align: (x, _) => (right, left).at(x),
  "indent-guides:", "1pt + black",
  "comment-styles:", "(size: 15pt)"
)

#algo(
  title: "Floyd-Warshall",
  parameters: ("V", "E", "w"),
  indent-guides: 1pt + black,
  comment-styles: (size: 15pt),
)[
  Let $"dist"[u,v] <- infinity$ for $u,v$ in $V$\
  For $(u,v)$ in $E$:#i\
    $"dist"[u,v] <- w(u,v)$ #comment[edge weights] #d\
  For $v$ in $V$:#i\
    $"dist"[v,v] <- 0$ #comment[base case] #d\
  \
  For $k <- 1$ to $|V|$:#i\
    For $i <- 1$ to $|V|$:#i\
      For $j <- 1$ to $|V|$:#i\
        #comment(inline: true)[if new path is shorter, reduce distance]\
        If $"dist"[i,j] > "dist"[i,k] + "dist"[k,j]$:#i\
          $"dist"[i,j] <- "dist"[i,k] + "dist"[k,j]$#d#d#d#d\
  \
  Return $"dist"$
]

== Alignment

#table(
  columns: 2,
  stroke: none,
  align: (x, _) => (right, left).at(x),
  "indent-guides:", "1pt + black",
  "block-align:", "bottom + right"
)

#algo(
  title: "Floyd-Warshall",
  parameters: ("V", "E", "w"),
  indent-guides: 1pt + black,
  block-align: bottom + right,
)[
  Let $"dist"[u,v] <- infinity$ for $u,v$ in $V$\
  For $(u,v)$ in $E$:#i\
    $"dist"[u,v] <- w(u,v)$ #comment[edge weights] #d\
  For $v$ in $V$:#i\
    $"dist"[v,v] <- 0$ #comment[base case] #d\
  \
  For $k <- 1$ to $|V|$:#i\
    For $i <- 1$ to $|V|$:#i\
      For $j <- 1$ to $|V|$:#i\
        #comment(inline: true)[if new path is shorter, reduce distance]\
        If $"dist"[i,j] > "dist"[i,k] + "dist"[k,j]$:#i\
          $"dist"[i,j] <- "dist"[i,k] + "dist"[k,j]$#d#d#d#d\
  \
  Return $"dist"$
]

#pagebreak()

#code(
  indent-guides: 1pt + black,
  block-align: bottom + right,
)[
  ```py
  def floyd_warshall(G):
    # let G be an adjacency matrix
    dist = G
    
    for k in range(len(G)):
      for i in range(len(G)):
        for j in range(len(G)):
          if dist[i][j] > dist[i][k] + dist[k][j]:
            dist[i][j] = dist[i][k] + dist[k][j]
    
    return dist
  ```
]

== Breakable

#table(
  columns: 2,
  stroke: none,
  align: (x, _) => (right, left).at(x),
  "indent-guides:", "1pt + black",
  "breakable:", "true"
)

#v(450pt)
#algo(
  title: "Floyd-Warshall",
  parameters: ("V", "E", "w"),
  indent-guides: 1pt + black,
  breakable: true,
)[
  Let $"dist"[u,v] <- infinity$ for $u,v$ in $V$\
  For $(u,v)$ in $E$:#i\
    $"dist"[u,v] <- w(u,v)$ #comment[edge weights] #d\
  For $v$ in $V$:#i\
    $"dist"[v,v] <- 0$ #comment[base case] #d\
  \
  For $k <- 1$ to $|V|$:#i\
    For $i <- 1$ to $|V|$:#i\
      For $j <- 1$ to $|V|$:#i\
        #comment(inline: true)[if new path is shorter, reduce distance]\
        If $"dist"[i,j] > "dist"[i,k] + "dist"[k,j]$:#i\
          $"dist"[i,j] <- "dist"[i,k] + "dist"[k,j]$#d#d#d#d\
  \
  Return $"dist"$
]

#v(460pt)
#code(
  indent-guides: 1pt + black,
  breakable: true,
)[
  ```py
  def floyd_warshall(G):
    # let G be an adjacency matrix
    dist = G
    
    for k in range(len(G)):
      for i in range(len(G)):
        for j in range(len(G)):
          if dist[i][j] > dist[i][k] + dist[k][j]:
            dist[i][j] = dist[i][k] + dist[k][j]
    
    return dist
  ```
]

== Broken indent guides with small inset

#table(
  columns: 2,
  stroke: none,
  align: (x, _) => (right, left).at(x),
  "row-gutter:", "15pt",
  "inset:", "3pt",
  "indent-guides:", "1pt + black",
  "breakable:", "true"
)

#v(380pt)
#algo(
  title: "Floyd-Warshall",
  parameters: ("V", "E", "w"),
  row-gutter: 15pt,
  inset: 3pt,
  indent-guides: 1pt + black,
  breakable: true,
)[
  Let $"dist"[u,v] <- infinity$ for $u,v$ in $V$\
  For $(u,v)$ in $E$:#i\
    $"dist"[u,v] <- w(u,v)$ #comment[edge weights] #d\
  For $v$ in $V$:#i\
    $"dist"[v,v] <- 0$ #comment[base case] #d\
  \
  For $k <- 1$ to $|V|$:#i\
    For $i <- 1$ to $|V|$:#i\
      For $j <- 1$ to $|V|$:#i\
        #comment(inline: true)[if new path is shorter, reduce distance]\
        If $"dist"[i,j] > "dist"[i,k] + "dist"[k,j]$:#i\
          $"dist"[i,j] <- "dist"[i,k] + "dist"[k,j]$#d#d#d#d\
  \
  Return $"dist"$
]

#v(420pt)
#code(
  row-gutter: 15pt,
  inset: 3pt,
  indent-guides: 1pt + black,
  breakable: true,
)[
  ```py
  def floyd_warshall(G):
    # let G be an adjacency matrix
    dist = G
    
    for k in range(len(G)):
      for i in range(len(G)):
        for j in range(len(G)):
          if dist[i][j] > dist[i][k] + dist[k][j]:
            dist[i][j] = dist[i][k] + dist[k][j]
    
    return dist
  ```
]
