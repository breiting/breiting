command: "date +\"%a %d %b\""

refreshFrequency: 10000

render: (output) ->
  "#{output}"

style: """
  -webkit-font-smoothing: antialiased
  color: #ffffff
  font: 11px Hack-Regular
  right: 60px
  top: 6px
"""
