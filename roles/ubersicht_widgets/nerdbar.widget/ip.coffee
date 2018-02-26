command: "$HOME/workspace/br-utils/br-ip"

refreshFrequency: 1000000

render: (output) ->
  "ip <span>#{output}</span>"

style: """
  -webkit-font-smoothing: antialiased
  color: #D5C4A1
  font: 12px Hack-Regular
  right: 4px
  bottom: 6px
  span
    color: #7AAB7E
"""
