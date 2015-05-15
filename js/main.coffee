config =
  move: '70px'
  over: '0.8s'
  wait: '0.1s'

  scale:
    direction: 'up'
    power: '0%'

  reset: false

  vFactor: 0

  delay: 'always'

#   enter: 'bottom'
#   move: '8px'
#   over: '0.6s'
#   wait: '0s'
#   easing: 'ease'
#   scale:
#     direction: 'up'
#     power: '0%'
#   rotate:
#     x: 0
#     y: 0
#     z: 0
#   opacity: 0
#   mobile: false
#   reset: false
#   viewport: window.document.documentElement
#   delay: 'once'
#   vFactor: 0.60
#   complete: (el) ->

window.sr = new scrollReveal config
