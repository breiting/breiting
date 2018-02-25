command: "$HOME/workspace/br-utils/br-ip"

refreshFrequency: 1000000

render: (output) ->
  "ip <span>#{output}</span>"

style: """
  -webkit-font-smoothing: antialiased
  color: #D5C4A1
  font: 10px Hack-Regular
  right: 322px
  top: 6px
  span
    color: #7AAB7E
"""
