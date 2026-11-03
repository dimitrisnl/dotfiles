#!/bin/sh
# Print a Helix macro; the Ctrl-Y binding transfers it through scratch register z.
set -u

tmp_dir=
tty_state=

cleanup() {
  if [ -n "$tty_state" ]; then
    stty "$tty_state" </dev/tty
    printf '\033[?1049h\033[?2004h' >/dev/tty
  fi
  if [ -n "$tmp_dir" ]; then
    rm -f "$tmp_dir/files" "$tmp_dir/cwd"
    rmdir "$tmp_dir"
  fi
}

trap cleanup EXIT
trap 'exit 130' INT
trap 'exit 143' TERM
trap 'exit 129' HUP

if ! command -v yazi >/dev/null 2>&1; then
  printf ':echo "Yazi is not installed"<ret>'
  exit 0
fi

if ! tmp_dir=$(mktemp -d "${TMPDIR:-/tmp}/helix-yazi.XXXXXX"); then
  printf ':echo "Cannot create Yazi temporary directory"<ret>'
  exit 0
fi

if ! tty_state=$(stty -g </dev/tty); then
  printf ':echo "Yazi requires a terminal"<ret>'
  exit 0
fi

if ! yazi --chooser-file="$tmp_dir/files" --cwd-file="$tmp_dir/cwd" </dev/tty >/dev/tty 2>&1; then
  printf ':echo "Yazi exited with an error"<ret>'
  exit 0
fi

# Single quotes protect Helix expansions; escape literal macro delimiters too.
quote_path() {
  printf '%s' "$1" | awk '{
    for (i = 1; i <= length($0); i++) {
      c = substr($0, i, 1)
      if (c == "<") printf "<lt>"
      else if (c == ">") printf "<gt>"
      else if (c == "\047") printf "\047\047"
      else printf "%s", c
    }
  }'
}

if [ -s "$tmp_dir/files" ]; then
  printf ':open --'
  while IFS= read -r file || [ -n "$file" ]; do
    [ -n "$file" ] || continue
    printf " '%s'" "$(quote_path "$file")"
  done <"$tmp_dir/files"
  printf '<ret>'

  if [ -s "$tmp_dir/cwd" ]; then
    cwd=$(cat "$tmp_dir/cwd")
    printf ":cd -- '%s'<ret>" "$(quote_path "$cwd")"
  fi
fi

printf ':redraw<ret>'
