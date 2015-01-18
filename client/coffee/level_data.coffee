s = 423 # Sky
a = 0   # ground top left, middle, center
b = 1
c = 2
d = 20  # ground bottom left, middle, center
e = 21
f = 22

module.exports =
  map: [
        [s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]
        [s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]
        [s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]
        [s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]
        [s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]
        [s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]
        [s,s,s,s,s,s,s,s,s,a,b,b,b,b,b,c,s,s,s,s]
        [s,s,s,s,s,s,s,s,s,d,e,e,e,e,e,f,s,s,a,b]
        [b,b,b,b,b,b,b,c,s,d,e,e,e,e,e,f,s,s,d,e]
        [e,e,e,e,e,e,e,f,s,d,e,e,e,e,e,f,s,s,d,e]
      ]
  x: 20
  y: 10
  tileWidth: 16
  tileHeight: 16
