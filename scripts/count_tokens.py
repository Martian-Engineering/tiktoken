#!/usr/bin/env python3
import sys
import tiktoken

def main():
    # Use cl100k_base encoding (GPT-3.5/4's encoding, similar to Claude's)
    enc = tiktoken.get_encoding("cl100k_base")
    
    # Read all input from stdin
    text = sys.stdin.read()
    
    # Count tokens
    tokens = enc.encode(text)
    
    # Print just the number
    print(len(tokens))

if __name__ == "__main__":
    main()