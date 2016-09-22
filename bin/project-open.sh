#!/bin/bash

tmux new-window -c "${WORK_PATH}/${PROJECT_NAME}" -n "${PROJECT_NAME}"
tmux send-keys -t "${PROJECT_NAME}" "${EDIT_CMD}" C-m
tmux send-keys -t "${PROJECT_NAME}" "${WORK_CMD}" C-m
tmux send-keys -t "${PROJECT_NAME}" "git status" C-m
tmux split-window -t "${PROJECT_NAME}" -c "${WORK_PATH}/${PROJECT_NAME}"
tmux send-keys -t "${PROJECT_NAME}" "${WORK_CMD}" C-m
tmux split-window -t "${PROJECT_NAME}" -c "${WORK_PATH}/${PROJECT_NAME}"
tmux send-keys -t "${PROJECT_NAME}" "${WORK_CMD}" C-m
tmux select-layout -t "${PROJECT_NAME}" even-vertical
