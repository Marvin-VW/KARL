#!/bin/bash

CURRENT_PATH=$(pwd)

run_serve() {
    echo "Running 'ollama serve'..."
    gnome-terminal --title="serve" -- bash -c "ollama serve; exec bash"
}

start_node_server() {
    echo "Starting Node.js server..."
    cd "$CURRENT_PATH"/KARL-SERVER/
    gnome-terminal --title="Node.js Server" -- bash -c "node server.js; exec bash"
}

run_python_script() {
    echo "Running Python script..."
    cd "$CURRENT_PATH"/KARL-SERVER/public/python/
    gnome-terminal --title="Python Script" -- bash -c "python3 python.py; exec bash"
}

run_serve
start_node_server
run_python_script

