command: "date +\"%H:%M\""

refreshFrequency: 10000 # ms

render: (output) ->
  "#{output}"

style: """
  -webkit-font-smoothing: antialiased
  color: #ffffff
  font: 11px Hack-Regular
  right: 10px
  top: 6px
"""
