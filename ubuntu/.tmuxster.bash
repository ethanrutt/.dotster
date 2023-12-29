# search and cd into directory with fzf
function sf {
    dir=$(find -L . -path '*/.*' -prune -o -not -name '.*' -type d -print | cut -b3- | fzf)

    if [ -z "${dir}" ] ; then
        return
    fi

    cd "${dir}"
}

function tmuxster_usage {
    echo "Usage: tmuxster [-n session-name]"
}

# function for creating new and attaching to existing tmux sessions
# if ran dry with no args, then you fuzzy find through existing tmux sessions
# and attach to the one you want
#
# if ran with -n argument, then it fuzzy finds to the directory you want
# then creates a new tmux session with that name given to -n argument
function tmuxster {
    local OPTIND session_name opt

    while getopts ":n:" opt; do
        case "${opt}" in
            n)
                session_name="${OPTARG}"
                ;;
            \?)
                echo "Invalid option: -${OPTARG}"
                tmuxster_usage
                return
                ;;
            :)
                echo "Option -${OPTARG} requires an argument"
                tmuxster_usage
                return
                ;;
            *)
                tmuxster_usage
                return
                ;;
        esac
    done

    if [ -z "${session_name}" ]; then
        attach_session=$(tmux ls | fzf | awk -F ': ' '{print $1}')
        tmux a -t "${attach_session}"
    else
        sf
        tmux new -s "${session_name}"
    fi
}

