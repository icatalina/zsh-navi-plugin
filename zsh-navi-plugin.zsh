function navi_widget() {
    local -r input="${LBUFFER}"
    local output="$(navi --print --fzf-overrides '--no-select-1')"

    if [[ "$output" =~ "run: "* ]]; then
        # Saves current command and restores it in the new buffer
        zle push-line
        # Replaces it with the output of navi
        LBUFFER="${output/run: /}"
        # Runs the navi command
        zle accept-line
    elif [[ -n "$output" ]]; then
        # zle kill-whole-line
        LBUFFER="${input}${output}"
    fi

    zle redisplay
}
