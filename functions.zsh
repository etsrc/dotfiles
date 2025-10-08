# Cheat Sheet
cs() {
  curl "cht.sh/$*"
}

_cs_complete() {
  # Fetch list of topics from cht.sh
  local -a topics
  topics=(${(f)"$(curl -s https://cht.sh/:list)"})
  compadd "$@" -- $topics
}

compdef _ch_complete ch

# Gemini
gem() {
    gemini "$@"
}
